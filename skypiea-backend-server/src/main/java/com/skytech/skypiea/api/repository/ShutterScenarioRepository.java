package com.skytech.skypiea.api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.ShutterScenario;


@Repository
public interface ShutterScenarioRepository extends JpaRepository<ShutterScenario, Long>{
	
	@Query("select nco from ShutterScenario nco where nco.room.id = :room")
	public List<ShutterScenario> findByRoom(@Param("room")Long room);
}
