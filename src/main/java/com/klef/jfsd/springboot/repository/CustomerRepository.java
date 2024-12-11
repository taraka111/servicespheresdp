package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
    
    // Custom query to check customer login by email and password
    @Query("SELECT c FROM Customer c WHERE c.email = ?1 AND c.password = ?2")
    Customer checkCustomerLogin(String email, String password);
    
    // Method to check if a customer already exists by email (used for registration)
    boolean existsByEmail(String email);  // Checks if the email exists in the database

    // Optional: Fetch customer by email for login check
    Customer findByEmail(String email);  // You may use this method for email-based login validation

	Customer findByEmailAndPassword(String email, String password);
}
