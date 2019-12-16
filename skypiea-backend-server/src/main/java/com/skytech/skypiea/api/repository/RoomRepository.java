package com.skytech.skypiea.api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.skytech.skypiea.commons.entity.Room;

public interface RoomRepository extends JpaRepository<Room, Long> {
	
	@Query("select r from Room r where r.resident.id = :residentId")
	public List<Room> findByResidentId(@Param("residentId")Long residentId);
	
	public List<Room> findByDoorNumber(Long doorNumber);
}
