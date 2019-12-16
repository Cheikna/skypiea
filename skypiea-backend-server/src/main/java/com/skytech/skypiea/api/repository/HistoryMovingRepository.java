package com.skytech.skypiea.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.HistoryMoving;

@Repository
public interface HistoryMovingRepository extends JpaRepository<HistoryMoving, Long> {
}
