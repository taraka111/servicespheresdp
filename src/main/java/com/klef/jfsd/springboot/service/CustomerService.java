package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.ApplyIntenships;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.WorkSubmition;

import java.util.List;

public interface CustomerService {
    // Existing methods
    public String customerRegistration(Customer customer);
    public Customer checkCustomerLogin(String email, String password);

    // New methods
    public List<Customer> getAllCustomers();               // Method to get all customers
    public Customer getCustomerById(int id);                // Method to get customer details by ID
    public String updateCustomer(Customer customer);        // Method to update customer details
    public String deleteCustomer(int id);                   // Method to delete a customer by ID
    public int getCustomerCount();                          // Method to get the total count of customers
	public void submitInternShipApplication(ApplyIntenships applyIntenships);
	public List<ApplyIntenships> getAllAppliedInternships(int id);
	public ApplyIntenships getAppliedInternshipsByID(int id);
	public void submitworkofInternship(WorkSubmition workSubmition);
}
