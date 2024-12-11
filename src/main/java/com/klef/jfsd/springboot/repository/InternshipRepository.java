package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.Internship;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InternshipRepository extends JpaRepository<Internship, Integer> {
    // JpaRepository provides CRUD operations by default
}
