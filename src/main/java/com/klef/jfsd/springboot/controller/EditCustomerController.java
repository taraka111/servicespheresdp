package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/customers") // Added a base URL to avoid conflicts and group customer-related APIs
public class EditCustomerController {

    @Autowired
    private CustomerService customerService;

    // Fetch customer details by ID (GET request)
    @GetMapping("/{id}")
    public Customer getCustomerDetails(@PathVariable("id") int id) {
        Customer customer = customerService.getCustomerById(id);
        if (customer == null) {
            throw new IllegalArgumentException("Customer not found with ID: " + id);
        }
        return customer;
    }

    // Update customer details (PUT request)
    @PutMapping("/update")
    public String updateCustomer(@RequestBody Customer customer) {
        String message = customerService.updateCustomer(customer);
        return message;
    }
}
