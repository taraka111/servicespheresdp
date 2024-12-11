package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.ApplyIntenships;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.WorkSubmition;
import com.klef.jfsd.springboot.repository.ApplyIntenshipsRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.WorkSubmitionRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerRepository customerRepository;
    
    @Autowired
    private ApplyIntenshipsRepository applyIntenshipsRepository;
    
    @Autowired
    private WorkSubmitionRepository workSubmitionRepository;

    // Get All Customers
    @Override
    public List<Customer> getAllCustomers() {
        return customerRepository.findAll(); // Fetch all customers
    }

    // Get Customer By ID
    @Override
    public Customer getCustomerById(int id) {
        return customerRepository.findById(id).orElse(null); // Fetch customer by ID
    }

    // Update Customer
    @Override
    public String updateCustomer(Customer customer) {
        if (customerRepository.existsById(customer.getId())) {
            customerRepository.save(customer); // Update the customer in the database
            return "Customer updated successfully.";
        } else {
            return "Customer not found.";
        }
    }

    // Delete Customer
    @Override
    public String deleteCustomer(int id) {
        if (customerRepository.existsById(id)) {
            customerRepository.deleteById(id); // Delete the customer from the database
            return "Customer deleted successfully.";
        } else {
            return "Customer not found.";
        }
    }

    // Get Customer Count
    @Override
    public int getCustomerCount() {
        return (int) customerRepository.count(); // Get the total count of customers
    }

    // Customer Registration (Implement the existing method for registering customers)
    @Override
    public String customerRegistration(Customer customer) {
        if (customerRepository.existsByEmail(customer.getEmail())) {
            return "Email already exists.";
        }
        customerRepository.save(customer); // Save the customer to the database
        return "Customer registered successfully.";
    }

    // Check Customer Login (Implement the existing method for login)
    @Override
    public Customer checkCustomerLogin(String email, String password) {
        return customerRepository.findByEmailAndPassword(email, password); // Check login credentials
    }

	@Override
	public void submitInternShipApplication(ApplyIntenships applyIntenships) {
		applyIntenshipsRepository.save(applyIntenships);
		
	}

	@Override
	public List<ApplyIntenships> getAllAppliedInternships(int id) {
		// TODO Auto-generated method stub
		List<ApplyIntenships> applyIntenships=applyIntenshipsRepository.findAll();
		List<ApplyIntenships> list=new ArrayList<ApplyIntenships>();
		for(ApplyIntenships ai:applyIntenships)
		{
			if(ai.getCustomer().getId()==id)
			{
				list.add(ai);
			}
		}
		
		return list;
	}

	@Override
	public ApplyIntenships getAppliedInternshipsByID(int id) {
		// TODO Auto-generated method stub
		return applyIntenshipsRepository.findById(id).get();
	}

	@Override
	public void submitworkofInternship(WorkSubmition workSubmition) {
		workSubmitionRepository.save(workSubmition);
		
	}
}
