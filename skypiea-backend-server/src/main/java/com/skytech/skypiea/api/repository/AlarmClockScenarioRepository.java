package com.skytech.skypiea.api.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.skytech.skypiea.commons.entity.AlarmClockScenario;

public interface AlarmClockScenarioRepository extends JpaRepository<AlarmClockScenario, Long> {
	
	@Query("select nco from AlarmClockScenario nco where nco.room.id = :room")
	public List<AlarmClockScenario> findByRoom(@Param("room")Long room);

}
