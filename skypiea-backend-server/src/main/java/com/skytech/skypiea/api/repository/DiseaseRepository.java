package com.skytech.skypiea.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.Disease;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

@Repository
public interface DiseaseRepository extends JpaRepository<Disease, Long>{

	@Query("select d from Disease d where d.client.id = :clientId")
	public List<Disease> findByClientId(@Param("clientId")Long clientId);
	
}
