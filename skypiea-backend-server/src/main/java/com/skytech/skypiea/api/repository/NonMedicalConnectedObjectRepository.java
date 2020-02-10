package com.skytech.skypiea.api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;


@Repository
public interface NonMedicalConnectedObjectRepository extends JpaRepository<NonMedicalConnectedObject, Long>{

	@Query("select nco from NonMedicalConnectedObject nco where nco.room.id = :roomId")
	public List<NonMedicalConnectedObject> findByRoomId(@Param("roomId")Long roomId);
}