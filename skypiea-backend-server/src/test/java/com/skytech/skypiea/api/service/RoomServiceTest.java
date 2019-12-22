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
		Timestamp timestamp = new Timestamp(new Date().getTime());
		User user1 = new Resident(0L,0L, "lastName", "leo", "", "", timestamp, timestamp);
		room0.setResident((Resident)user1);
		Room savedRoom = roomRepository.save(room0);
		residentId = savedRoom.getResident().getId();
		
	}

	@Test
	public void initObjectQuantityByTypeTest() {
		Room room1 = new Room(1L, 1L, 102L, 1, 6.6f, 3.0f, 2.0f, Wing.NORTH, "room-1");
		
		Room room2 = new Room(1L, 1L, 103L, 1, 6.6f, 3.0f, 2.0f, Wing.NORTH, "room-2");
		
		NonMedicalConnectedObject obj1 = new NonMedicalConnectedObject();
		obj1.setNonMedicalObjectType(NonMedicalObjectType.ALARM_CLOCK);
		NonMedicalConnectedObject obj2 = new NonMedicalConnectedObject();
		obj2.setNonMedicalObjectType(NonMedicalObjectType.ALARM_CLOCK);
		NonMedicalConnectedObject obj3 = new NonMedicalConnectedObject();
		obj3.setNonMedicalObjectType(NonMedicalObjectType.SHUTTER);
		NonMedicalConnectedObject obj4 = new NonMedicalConnectedObject();
		obj4.setNonMedicalObjectType(NonMedicalObjectType.SUNSHINE_SENSOR);
		
		Set<NonMedicalConnectedObject> objects1 = new HashSet<NonMedicalConnectedObject>();
		objects1.add(obj1);
		objects1.add(obj2);
		
		Set<NonMedicalConnectedObject> objects2 = new HashSet<NonMedicalConnectedObject>();
		objects2.add(obj3);
		objects2.add(obj4);
		room1.initObjectQuantityByType();
		room2.initObjectQuantityByType();
		assertEquals(0, room1.getObjectQuantityByType().size());
		assertEquals(0, room2.getObjectQuantityByType().size());
		
		room1.setNonMedicalConnectedObjects(objects1);
		room1.initObjectQuantityByType();
		
		room2.setNonMedicalConnectedObjects(objects2);
		room2.initObjectQuantityByType();		
		
		assertEquals(1, room1.getObjectQuantityByType().size());
		int clockInRoom1 = (int)room1.getObjectQuantityByType().get(NonMedicalObjectType.ALARM_CLOCK);
		assertEquals(2, clockInRoom1);
		
		assertEquals(2, room2.getObjectQuantityByType().size());
		int shutterInRoom2 = (Integer)room2.getObjectQuantityByType().get(NonMedicalObjectType.SHUTTER);
		assertEquals(1, shutterInRoom2);
		int sunshineInRoom2 = (Integer)room2.getObjectQuantityByType().get(NonMedicalObjectType.SUNSHINE_SENSOR);
		assertEquals(1, sunshineInRoom2);
		
	}
	
	@Test
	public void findRoomByResidentId() {
		Room findedRoom = roomService.findByResidentId(residentId);
		assertNotNull(findedRoom);
		assertEquals(room0, findedRoom);		
	}
	
	@Test
	public void testFindByRoomId() {
		Room room1 = new Room(2L, 1L, 102L, 1, 6.6f, 3.0f, 2.0f, Wing.NORTH, "room-1");		
		Room room2 = new Room(3L, 1L, 103L, 1, 7.6f, 3.0f, 2.5f, Wing.SOUTH, "room-2");
		Room room3 = new Room(4L, 1L, 103L, 1, 6.8f, 3.0f, 7.0f, Wing.EAST, "room-3");
		roomRepository.save(room1);
		roomRepository.save(room2);
		roomRepository.save(room3);
		Room searchedRoom = roomService.findByDoorNumber(103L);
		assertEquals(room2, searchedRoom);
		
	}

}
