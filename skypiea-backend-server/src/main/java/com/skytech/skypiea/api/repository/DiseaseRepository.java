package com.skytech.skypiea.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.Disease;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.Disease;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;

@Repository
public interface DiseaseRepository extends JpaRepository<Disease, Long>{

	@Query("select id from Disease Where client_id=:clientId")
	public List<Disease> findByClientId(@Param("clientId")Long clientId);
}
