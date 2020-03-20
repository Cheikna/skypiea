package com.skytech.skypiea.api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.Profile;

@Repository
public interface ProfileRepository extends JpaRepository<Profile, Long>{

	@Query("select p from Profile p where p.client.id = :clientId")
	public Profile findByClientId(@Param("clientId")Long clientId);
}