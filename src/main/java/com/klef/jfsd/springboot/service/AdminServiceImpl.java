package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.ApplyIntenships;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.WorkSubmition;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.ApplyIntenshipsRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.WorkSubmitionRepository;

@Service
public class AdminServiceImpl implements AdminService{
	 
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	 @Autowired
	 private ApplyIntenshipsRepository applyIntenshipsRepository;
	 
	 @Autowired
	    private WorkSubmitionRepository workSubmitionRepository;
	 
	@Override
	public List<Customer> viewAllCustomers() {
		// TODO Auto-generated method stub
		return customerRepository.findAll();
	}
	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		// TODO Auto-generated method stub
		return adminRepository.checkAdminLogin(uname,pwd);
	}
	@Override
	public long customercount() {
		return customerRepository.count();
	}
	@Override
	public List<ApplyIntenships> viewAppliedInternships() {
		// TODO Auto-generated method stub
		return applyIntenshipsRepository.findAll();
	}
	@Override
	public void updaterequeststatus(int id, String status) {
		ApplyIntenships intenship=applyIntenshipsRepository.findById(id).get();
		intenship.setStatus(status);
		applyIntenshipsRepository.save(intenship);
		
	}
	@Override
	public List<WorkSubmition> getAllsubmissionsOfInternships() {
		// TODO Auto-generated method stub
		return workSubmitionRepository.findAll();
	}
	
}
