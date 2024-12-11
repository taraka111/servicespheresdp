package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Internship;

import java.util.List;

public interface InternshipService {
    void addInternship(Internship internship);
    List<Internship> getAllInternships();
	void deleteInternShip(int id);
	Internship getInternshipById(int id);
	void updateInternshipdata(Internship internship);
}
