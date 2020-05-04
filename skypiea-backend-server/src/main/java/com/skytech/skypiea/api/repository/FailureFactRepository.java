package com.skytech.skypiea.api.repository;


import org.springframework.data.jpa.repository.JpaRepository;


import com.skytech.skypiea.commons.entity.FailureFact;

public interface FailureFactRepository extends JpaRepository<FailureFact, Long>{
	
}
