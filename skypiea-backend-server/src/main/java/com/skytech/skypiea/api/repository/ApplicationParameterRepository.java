package com.skytech.skypiea.api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.skytech.skypiea.commons.entity.ApplicationParameter;
import com.skytech.skypiea.commons.enumeration.Parameter;

@Repository
public interface ApplicationParameterRepository extends JpaRepository<ApplicationParameter, Long> {

	public List<ApplicationParameter> findByParameter(Parameter parameter);

}
