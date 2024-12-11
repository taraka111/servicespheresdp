package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.ApplyIntenships;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.WorkSubmition;

public interface AdminService {

	public List<Customer> viewAllCustomers();
	public Admin checkAdminLogin(String uname,String pwd);
	public long customercount();
	public List<ApplyIntenships> viewAppliedInternships();
	public void updaterequeststatus(int id, String status);
	public List<WorkSubmition> getAllsubmissionsOfInternships();

}
