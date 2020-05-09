package com.skytech.skypiea.api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.Notification;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, Long> {
	
	@Query("select notif from Notification notif where notif.resident.id = :residentId")
	public List<Notification> findAllByResidentId(@Param("residentId") Long residentId);
}
