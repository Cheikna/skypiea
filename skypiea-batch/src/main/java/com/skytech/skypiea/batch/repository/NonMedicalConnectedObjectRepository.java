package com.skytech.skypiea.batch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;


@Repository
public interface NonMedicalConnectedObjectRepository extends JpaRepository<NonMedicalConnectedObject, Long>{

}