package com.skytech.skypiea.api.repository;

import org.springframework.stereotype.Repository;
import com.skytech.skypiea.commons.entity.ElectronicTag;

import org.springframework.data.jpa.repository.JpaRepository;


@Repository
public interface ElectronicTagRepository extends JpaRepository<ElectronicTag, Long>{
}
