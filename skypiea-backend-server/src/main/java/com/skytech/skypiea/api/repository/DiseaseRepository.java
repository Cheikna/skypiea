package com.skytech.skypiea.api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.Disease;

@Repository
public interface DiseaseRepository extends JpaRepository<Disease, Long>{

	/*@Query("select * from Disease d where client_id=clientId")
	public List<Disease> findAllDiseaseOfAClient(@Param("clientId")Long client);*/
}
