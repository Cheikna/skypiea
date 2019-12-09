package com.skytech.skypiea.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.skytech.skypiea.commons.entity.Client;

public interface ClientRepository extends JpaRepository<Client, Long> {

}
