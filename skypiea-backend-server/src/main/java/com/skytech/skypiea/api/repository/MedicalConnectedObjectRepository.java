package com.skytech.skypiea.api.repository;

import com.skytech.skypiea.commons.entity.MedicalConnectedObject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MedicalConnectedObjectRepository extends JpaRepository<MedicalConnectedObject, Long> {

}
