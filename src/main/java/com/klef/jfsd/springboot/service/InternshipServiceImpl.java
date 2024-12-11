package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Internship;
import com.klef.jfsd.springboot.repository.InternshipRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
public class InternshipServiceImpl implements InternshipService {

    @Autowired
    private InternshipRepository internshipRepository;

    @Override
    public void addInternship(Internship internship) {
    	LocalDate currentDate = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formattedDate = currentDate.format(formatter);
    	internship.setCreateddate(formattedDate);
        internshipRepository.save(internship);
    }

    @Override
    public List<Internship> getAllInternships() {
        return internshipRepository.findAll();
    }

	@Override
	public void deleteInternShip(int id) {
		internshipRepository.deleteById(id);
		
	}

	@Override
	public Internship getInternshipById(int id) {
		return internshipRepository.findById(id).get();
	}

	@Override
	public void updateInternshipdata(Internship internship) {
		Internship i=internshipRepository.findById(internship.getId()).get();
		i.setDescription(internship.getDescription());
		i.setDuration(internship.getDuration());
		i.setStipend(internship.getStipend());
		i.setTitle(internship.getTitle());
		
		internshipRepository.save(i);
		
	}
}
