package com.skytech.skypiea.api.repository;

import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.skytech.skypiea.commons.entity.ElectronicTag;

@Repository
public interface ElectronicTagRepository extends JpaRepository<ElectronicTag, Long>{

}
