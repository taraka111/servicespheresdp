package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Internship;
import com.klef.jfsd.springboot.service.InternshipService;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InternshipController {

    @Autowired
    private InternshipService internshipService;
    
    @GetMapping("/internship")
    public String internship()
    {
    	return "addInternship";
    }

    @PostMapping("/addInternship")
    public String addInternship(@ModelAttribute Internship internship) {
        internshipService.addInternship(internship);
        return "redirect:/viewInternships";
    }

    @GetMapping("/viewInternships")
    public ModelAndView viewInternships() {
    	ModelAndView view=new ModelAndView("viewInternships");
        view.addObject("internships", internshipService.getAllInternships());
        return view; // Maps to `viewInternships.jsp`
    }
    
    @GetMapping("/deleteinternship")
    public ModelAndView deleteinternship(@RequestParam("id") int id)
    {
//    	System.out.println(id);
    	internshipService.deleteInternShip(id);
    	ModelAndView view=new ModelAndView("viewInternships");
        view.addObject("internships", internshipService.getAllInternships());
        view.addObject("msg", "Successfully Deleted");
        return view; 
//    	return "redirect:/viewInternships";
    }
    
    @GetMapping("/editinternship")
    public ModelAndView editinternship(@RequestParam("id") int id)
    {
    	ModelAndView view=new ModelAndView("editinternship");
    	Internship internship=internshipService.getInternshipById(id);
        view.addObject("internship",internship );
        return view; 
    }
    
    @PostMapping("/updateinternshipdata")
    public ModelAndView updateinternshipdata(HttpServletRequest request)
    {
    	int ramid = Integer.parseInt(request.getParameter("ramid"));
    	String title=request.getParameter("title");
    	String description=request.getParameter("description");
    	String duration=request.getParameter("duration");
    	String stipend=request.getParameter("stipend");
    	
    	 Internship internship = new Internship();
    	 internship.setId(ramid);
    	 internship.setTitle(title);
    	 internship.setDescription(description);
    	 internship.setDuration(duration);
    	 internship.setStipend(stipend);
    	 
    	 internshipService.updateInternshipdata(internship);
    	 
    	 ModelAndView view=new ModelAndView("viewInternships");
         view.addObject("internships", internshipService.getAllInternships());
         view.addObject("msg", "Successfully Updated");
         return view; 
//    	return "redirect:/viewInternships";
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
