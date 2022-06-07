package com.backend.repository;

import com.backend.entity.Property;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SignRepository extends JpaRepository<Property, Long> {
}