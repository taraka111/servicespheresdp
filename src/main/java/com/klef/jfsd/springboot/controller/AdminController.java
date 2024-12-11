package com.klef.jfsd.springboot.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.ApplyIntenships;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.WorkSubmition;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    /**
     * Displays the admin login page.
     */
    @GetMapping("adminlogin")
    public ModelAndView adminLogin() {
        return new ModelAndView("adminlogin");
    }

    /**
     * Handles admin login authentication.
     */
    @PostMapping("checkadminlogin")
    public ModelAndView checkAdminLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String username = request.getParameter("auname");
        String password = request.getParameter("apwd");
        
        HttpSession session = request.getSession();
        Admin admin = adminService.checkAdminLogin(username, password);
        
        if (admin != null) {
            mv.setViewName("adminhome");
            session.setAttribute("admin", admin);
            long customerCount = adminService.customercount();
            mv.addObject("count", customerCount);
        } else {
            mv.setViewName("adminlogin");
            mv.addObject("message", "Login Failed Please check your credentials.");
        }
        return mv;
    }

    /**
     * Displays the admin home page.
     */
    @GetMapping("adminhome")
    public ModelAndView adminHome() {
        return new ModelAndView("adminhome");
    }

    /**
     * Displays a list of all customers.
     */
    @GetMapping("viewallcustomers")
    public ModelAndView viewAllCustomers() {
        ModelAndView mv = new ModelAndView("viewallcustomers");
        List<Customer> customers = adminService.viewAllCustomers();
        mv.addObject("customerlist", customers);
        return mv;
    }
    
    @GetMapping("/adminlogout")
    public String adminlogout(HttpSession session)
    {
    	session.invalidate();
    	return "redirect:/adminlogin";
    }
    
    @GetMapping("/appliedinternships")
    public ModelAndView appliedinternships()
    {
    	ModelAndView mv = new ModelAndView("appliedinternships");
        List<ApplyIntenships> intenships = adminService.viewAppliedInternships();
        List<ApplyIntenships> newintenships=new ArrayList<ApplyIntenships>();
        for(ApplyIntenships ai:intenships)
        {
        	if(ai.getStatus().equals("Pending"))
        	{
        		newintenships.add(ai);
        	}
        }
        mv.addObject("internships", newintenships);
        return mv;
    }
    
    @GetMapping("/updaterequeststatus")
    public String updaterequeststatus(@RequestParam("id") int id,@RequestParam("status") String status)
    {
//    	System.out.println(status);
    	adminService.updaterequeststatus(id,status);
    	return "redirect:/appliedinternships";
    }
    
    @GetMapping("/viewsubmissions")
    public ModelAndView viewsubmissions()
    {
    	ModelAndView mv = new ModelAndView("viewsubmissions");
    	List<WorkSubmition>  submissions = adminService.getAllsubmissionsOfInternships();
    	mv.addObject("submissions", submissions);
        return mv;
    }
    
    
    
    
    
    
    
}
