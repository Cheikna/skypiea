package com.skytech.skypiea.api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.skytech.skypiea.commons.entity.User;
import com.skytech.skypiea.commons.enumeration.UserType;

public interface UserRepository extends JpaRepository<User, Long> {
	
	public List<User> findByUsername(String username);
	
	public List<User> findByUserType(UserType userType);

}
