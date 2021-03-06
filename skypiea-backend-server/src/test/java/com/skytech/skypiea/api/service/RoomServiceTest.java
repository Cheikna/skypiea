package com.skytech.skypiea.api.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import com.skytech.skypiea.api.repository.NonMedicalConnectedObjectRepository;
import com.skytech.skypiea.api.repository.RoomRepository;
import com.skytech.skypiea.api.repository.UserRepository;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.Resident;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.entity.User;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.Wing;

@ComponentScan(basePackageClasses = {
		RoomService.class,
		RoomRepository.class,
		UserRepository.class,
		NonMedicalConnectedObjectRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")
public class RoomServiceTest {

	@Autowired
	private RoomRepository roomRepository;

	@Autowired
	private RoomService roomService;

	private Room room0 = new Room(1L, 1L, 101L, 1, 6.6f, 3.0f, 2.0f, Wing.NORTH, "room-0");
	private Long residentId;

	@Before
	public void init() {
		/**
		 * Given
		 */
		Timestamp timestamp = new Timestamp(new Date().getTime());
		User user1 = new Resident(0L,0L, "lastName", "leo", "", "", null, timestamp, timestamp,"");
		room0.setResident((Resident)user1);

		/**
		 * When
		 */
		Room savedRoom = roomRepository.save(room0);

		/**
		 * Then
		 */
		residentId = savedRoom.getResident().getId();

	}

	@Test
	public void initObjectQuantityByTypeTest() {
		/**
		 * Given
		 */
		Room room1 = new Room(1L, 1L, 102L, 1, 6.6f, 3.0f, 2.0f, Wing.NORTH, "room-1");

		Room room2 = new Room(1L, 1L, 103L, 1, 6.6f, 3.0f, 2.0f, Wing.NORTH, "room-2");

		NonMedicalConnectedObject obj1 = new NonMedicalConnectedObject();
		obj1.setId(1L);
		obj1.setNonMedicalObjectType(NonMedicalObjectType.ALARM_CLOCK);
		NonMedicalConnectedObject obj2 = new NonMedicalConnectedObject();
		obj2.setId(2L);
		obj2.setNonMedicalObjectType(NonMedicalObjectType.ALARM_CLOCK);
		NonMedicalConnectedObject obj3 = new NonMedicalConnectedObject();
		obj3.setId(3L);
		obj3.setNonMedicalObjectType(NonMedicalObjectType.SHUTTER);
		NonMedicalConnectedObject obj4 = new NonMedicalConnectedObject();
		obj4.setId(4L);
		obj4.setNonMedicalObjectType(NonMedicalObjectType.SUNSHINE_SENSOR);

		// We need to add the ID otherwise the Set Collection will not add the other object
		// because it will consider that they are the same
		Set<NonMedicalConnectedObject> objects1 = new HashSet<NonMedicalConnectedObject>();
		objects1.add(obj1);
		objects1.add(obj2);

		Set<NonMedicalConnectedObject> objects2 = new HashSet<NonMedicalConnectedObject>();
		objects2.add(obj3);
		objects2.add(obj4);
		
		/**
		 * When
		 */
		room1.initObjectQuantityByType();
		room2.initObjectQuantityByType();
		// We have not affected any object to the room yet
		int quantityRoom1BeforeObjectsAttach = room1.getObjectQuantityByType().size();
		int quantityRoom2BeforeObjectsAttach = room1.getObjectQuantityByType().size();

		room1.setNonMedicalConnectedObjects(objects1);
		room1.initObjectQuantityByType();
		int clockInRoom1 = (int)room1.getObjectQuantityByType().get(NonMedicalObjectType.ALARM_CLOCK);

		room2.setNonMedicalConnectedObjects(objects2);
		room2.initObjectQuantityByType();		
		int shutterInRoom2 = (Integer)room2.getObjectQuantityByType().get(NonMedicalObjectType.SHUTTER);
		int sunshineInRoom2 = (Integer)room2.getObjectQuantityByType().get(NonMedicalObjectType.SUNSHINE_SENSOR);
		
		/**
		 * Then
		 */
		assertEquals(0, quantityRoom1BeforeObjectsAttach);
		assertEquals(0, quantityRoom2BeforeObjectsAttach);
		assertEquals(1, room1.getObjectQuantityByType().size());
		assertEquals(2, clockInRoom1);
		assertEquals(2, room2.getObjectQuantityByType().size());
		assertEquals(1, shutterInRoom2);		
		assertEquals(1, sunshineInRoom2);

	}

	@Test
	public void findRoomByResidentId() {
		/**
		 * Given
		 */

		/**
		 * When
		 */
		Room findedRoom = roomService.findByResidentId(residentId);

		/**
		 * Then
		 */
		assertNotNull(findedRoom);
		assertEquals(room0, findedRoom);		
	}

	@Test
	public void testFindByRoomId() {
		/**
		 * Given
		 */
		Room room1 = new Room(2L, 1L, 102L, 1, 6.6f, 3.0f, 2.0f, Wing.NORTH, "room-1");		
		Room room2 = new Room(3L, 1L, 103L, 1, 7.6f, 3.0f, 2.5f, Wing.SOUTH, "room-2");
		Room room3 = new Room(4L, 1L, 103L, 1, 6.8f, 3.0f, 7.0f, Wing.EAST, "room-3");

		/**
		 * When
		 */
		roomRepository.save(room1);
		roomRepository.save(room2);
		roomRepository.save(room3);
		Room searchedRoom = roomService.findByDoorNumber(103L);

		/**
		 * Then
		 */
		assertEquals(room2, searchedRoom);

	}

}
