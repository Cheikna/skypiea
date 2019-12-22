package com.skytech.skypiea.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.Resident;

@Repository
public interface ResidentRepository extends JpaRepository<Resident, Long> {
}
