package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DeleteCustomerController {

    @Autowired
    private CustomerService customerService;

    @GetMapping("/deleteCustomer")
    public String deleteCustomer(@RequestParam("id") int id) {
        customerService.deleteCustomer(id);
        return "Customer with ID " + id + " deleted successfully!";
    }
}
