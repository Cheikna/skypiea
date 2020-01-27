package com.skytech.skypiea.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.Failure;

@Repository
public interface FailureRepository extends JpaRepository<Failure, Long> {

}
