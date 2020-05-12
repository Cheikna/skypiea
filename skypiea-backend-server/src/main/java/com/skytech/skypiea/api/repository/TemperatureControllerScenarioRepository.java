package com.skytech.skypiea.api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.entity.TemperatureControllerScenario;


@Repository
public interface TemperatureControllerScenarioRepository extends JpaRepository<TemperatureControllerScenario, Long>{

	@Query("select nco from TemperatureControllerScenario nco where nco.room.id = :room")
	public List<TemperatureControllerScenario> findByRoom(@Param("room")Long room);
}