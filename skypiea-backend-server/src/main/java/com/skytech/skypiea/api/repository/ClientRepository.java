package com.skytech.skypiea.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.skytech.skypiea.commons.entity.Client;

@Repository
public interface ClientRepository extends JpaRepository<Client, Long> {
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE Client SET priority_points = :priorityPoints WHERE id = :clientId", nativeQuery = true)
	@Transactional
	public int updateClientForPriorityPoints(@Param("priorityPoints")float priorityPoints, @Param("clientId")Long clientId);
}
