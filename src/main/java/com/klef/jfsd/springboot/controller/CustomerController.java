package com.klef.jfsd.springboot.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.ApplyIntenships;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Internship;
import com.klef.jfsd.springboot.model.WorkSubmition;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.InternshipService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;
    
    @Autowired
    private InternshipService internshipService;

    // Home Page
    @GetMapping("/")
    public ModelAndView home() {
    	ModelAndView mv= new ModelAndView("home");
    	
    	mv.addObject("internships", internshipService.getAllInternships());
    	return mv;
    }

    // Customer Registration Page
    @GetMapping("/customerreg")
    public ModelAndView customerreg() {
        return new ModelAndView("customerreg");
    }

    // Insert New Customer
    @PostMapping("/insertcustomer")
    public String insertcustomer(HttpServletRequest request) {
        String name = request.getParameter("cname");
        String gender = request.getParameter("cgender");
        String dob = request.getParameter("cdob");
        String email = request.getParameter("cemail");
        String location = request.getParameter("clocation");
        String contact = request.getParameter("ccontact");
        String password = request.getParameter("cpwd");

        // Validate the input here (you can extend this validation further)
        if (name == null || email == null || password == null || contact == null) {
            ModelAndView mv = new ModelAndView("customerreg");
            mv.addObject("message", "All fields are required.");
//            return mv;
            return "redirect:/customerreg";
        }

        Customer customer = new Customer();
        customer.setName(name);
        customer.setGender(gender);
        customer.setDateofbirth(dob);
        customer.setEmail(email);
        customer.setLocation(location);
        customer.setContact(contact);
        customer.setPassword(password);

        String message = customerService.customerRegistration(customer);
        

        Customer c = customerService.checkCustomerLogin(email, password);

        ModelAndView mv = new ModelAndView();
        if (customer != null) 
        {
            HttpSession session = request.getSession();
            session.setAttribute("customer", customer);
            mv.setViewName("customerhome");
           
        } else {
            mv.setViewName("customerlogin");
            mv.addObject("message", "Login Failed. Please check your credentials.");
        }
        return "redirect:/customerhome";
        
//        ModelAndView mv = new ModelAndView("customerreg");
//        mv.addObject("message", message);
//        return mv;
    }

    // Customer Login Page
    @GetMapping("/customerlogin")
    public ModelAndView customerlogin() {
        return new ModelAndView("customerlogin");
    }

    // Check Customer Login
    @PostMapping("/checkcustomerlogin")
    public String checkcustomerlogin(HttpServletRequest request) {
        String email = request.getParameter("cemail");
        String password = request.getParameter("cpwd");

        Customer customer = customerService.checkCustomerLogin(email, password);

        ModelAndView mv = new ModelAndView();
        if (customer != null) {
            // Login successful, store customer in session
            HttpSession session = request.getSession();
            session.setAttribute("customer", customer);
            mv.setViewName("customerhome");
            return "redirect:/customerhome";
        } else {
            mv.setViewName("customerlogin");
            mv.addObject("message", "Login Failed. Please check your credentials.");
        }
        return "redirect:/customerlogin";
    }

    // Customer Home Page
    @GetMapping("/customerhome")
    public ModelAndView customerhome() {
        return new ModelAndView("customerhome");
    }

    // Customer Profile Page
    @GetMapping("/customerprofile")
    public ModelAndView customerprofile(HttpSession session) {
        Customer customer = (Customer) session.getAttribute("customer");

        if (customer == null) {
            return new ModelAndView("customerlogin").addObject("message", "Please login to view your profile.");
        }

        ModelAndView mv = new ModelAndView("customerprofile");
        mv.addObject("customer", customer);
        return mv;
    }

    // Logout Customer
    @GetMapping("/customerlogout")
    public ModelAndView customerlogout(HttpSession session) {
        session.invalidate();
        return new ModelAndView("customerlogin");
    }

    // About Page
    @GetMapping("/about")
    public ModelAndView about() {
        return new ModelAndView("about");
    }

    // Edit Customer Page (GET)
    @GetMapping("/editCustomer")
    public ModelAndView editCustomer(@RequestParam("id") int id, HttpSession session) {
        // Ensure the customer is logged in
        Customer loggedInCustomer = (Customer) session.getAttribute("customer");
        if (loggedInCustomer == null) {
            return new ModelAndView("customerlogin").addObject("message", "Please login to edit your profile.");
        }

        // Only allow the logged-in customer to edit their own profile
        if (loggedInCustomer.getId() != id) {
            return new ModelAndView("customerhome").addObject("message", "You can only edit your own profile.");
        }

        Customer customer = customerService.getCustomerById(id);
        ModelAndView mv = new ModelAndView();
        if (customer != null) {
            mv.addObject("customer", customer);
            mv.setViewName("editCustomer");
        } else {
            mv.setViewName("error");
            mv.addObject("message", "Customer not found.");
        }
        return mv;
    }

    // Update Customer (POST)
    @PostMapping("/updateCustomer")
    public ModelAndView updateCustomer(@ModelAttribute("customer") Customer customer, HttpSession session) {
        // Ensure the customer is logged in
        Customer loggedInCustomer = (Customer) session.getAttribute("customer");
        if (loggedInCustomer == null) {
            return new ModelAndView("customerlogin").addObject("message", "Please login to update your profile.");
        }

        // Only allow the logged-in customer to update their own profile
        if (loggedInCustomer.getId() != customer.getId()) {
            return new ModelAndView("customerhome").addObject("message", "You can only update your own profile.");
        }

        // Perform customer update
        String message = customerService.updateCustomer(customer);

        ModelAndView mv = new ModelAndView();
        mv.addObject("message", message);
        mv.setViewName("customerprofile");  // Redirect to customer profile or success page
        return mv;
    }
    
    @GetMapping("/allinternship")
    public ModelAndView allinternship( HttpSession session)
    {
    	Customer customer=(Customer)session.getAttribute("customer");
    	 ModelAndView mv = new ModelAndView();
    	 
    	 List<Internship> intenships = internshipService.getAllInternships();
//    	 List<ApplyIntenships> appliedIntenships=customerService.getAllAppliedInternships(customer.getId());
//    	 intenships.removeIf(internship -> 
// 	    appliedIntenships.stream()
// 	                     .anyMatch(applied -> applied.getInternship().getId()==internship.getId())
// 	);
    	 
    	 List<ApplyIntenships> appliedInternships = customerService.getAllAppliedInternships(customer.getId());
    	 LocalDate currentDate = LocalDate.now();
    	 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    	 // Remove internships if their closing date has passed
    	 intenships.removeIf(internship ->
    	     appliedInternships.stream()
    	         .anyMatch(applied -> 
    	             applied.getInternship().getId() == internship.getId()
    	         )
    	 );
    	 
    	 List<Internship> newlist=new ArrayList<Internship>();
    	 
    	 for(Internship a:intenships)
    	 {
    		 boolean k= LocalDate.parse(a.getClosingdate(), formatter).isBefore(currentDate);
    		 if(!k)
    		 {
    			 newlist.add(a);
    		 }
    	 }


         
         mv.addObject("internships",newlist);
         mv.setViewName("applyinternship");
         return mv;
    }
    
    @GetMapping("applyinternship")
    public String applyinternship(HttpSession session,@RequestParam("id") int id,HttpServletRequest request)
    {
    	Customer customer=(Customer)session.getAttribute("customer");
    	
    	String datalink=request.getParameter("datalink");
    	
    	Internship internship=internshipService.getInternshipById(id);
    	ApplyIntenships applyIntenships=new ApplyIntenships();
    	applyIntenships.setCustomer(customer);
    	applyIntenships.setStatus("Pending");
    	applyIntenships.setDatalink(datalink);
    	LocalDate currentDate = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    	applyIntenships.setApplieddate(currentDate.format(formatter));
    	applyIntenships.setInternship(internship);
    	
    	customerService.submitInternShipApplication(applyIntenships);
//    	System.out.println(datalink);
    	return "redirect:/allinternship";
    }
    @GetMapping("/appliedinternship")
    public ModelAndView appliedinternship(HttpSession session)
    {
    	Customer customer=(Customer)session.getAttribute("customer");
    	
    	
    	ModelAndView mv = new ModelAndView();
    	List<ApplyIntenships> appliedIntenships=customerService.getAllAppliedInternships(customer.getId());
        mv.addObject("internships",appliedIntenships );
        mv.setViewName("appliedinternship");
        return mv;
    }
    
    @GetMapping("/viewDetailsOfInternShip")
    public ModelAndView viewDetailsOfInternShip(@RequestParam("id") int id)
    {
    	ModelAndView mv = new ModelAndView();
    	ApplyIntenships internshipdetails=customerService.getAppliedInternshipsByID(id);
        mv.addObject("internship",internshipdetails );
        mv.setViewName("viewDetailsOfInternShip");
        return mv;
    }
    
    @GetMapping("work")
    public ModelAndView work(@RequestParam("id") int id)
    {
    	ModelAndView mv = new ModelAndView("submitproject");
    	mv.addObject("id", id);
    	return mv;
    }
    @PostMapping("submitwork")
    public String submitwork(@RequestParam("workdata") String workdata,@RequestParam("id") int id)
    {
    	WorkSubmition workSubmition=new WorkSubmition();
    	workSubmition.setSubmissiondata(workdata);
    	workSubmition.setApplyIntenships(customerService.getAppliedInternshipsByID(id));
    	workSubmition.setSubmissionstatus("Pending");
    	
    	LocalDate currentDate = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    	workSubmition.setSubmitdate(currentDate.format(formatter));
    	customerService.submitworkofInternship(workSubmition);
    	return "redirect:/appliedinternship";
    }
    
    
}
