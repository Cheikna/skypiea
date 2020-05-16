package com.skytech.skypiea.api.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.skytech.skypiea.commons.entity.BulbScenario;;

public interface BulbScenarioRepository extends JpaRepository<BulbScenario, Long> {
	
	@Query("select nco from BulbScenario nco where nco.room.id = :room")
	public List<BulbScenario> findByRoom(@Param("room")Long room);

}