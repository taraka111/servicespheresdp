package com.klef.jfsd.springboot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class WorkSubmition 
{
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ApplyIntenships", referencedColumnName = "applicationid", nullable = false)
	private ApplyIntenships applyIntenships;
	
	private String submitdate;
	
	private String submissiondata;
	
	private String submissionstatus;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ApplyIntenships getApplyIntenships() {
		return applyIntenships;
	}

	public void setApplyIntenships(ApplyIntenships applyIntenships) {
		this.applyIntenships = applyIntenships;
	}

	public String getSubmitdate() {
		return submitdate;
	}

	public void setSubmitdate(String submitdate) {
		this.submitdate = submitdate;
	}

	public String getSubmissiondata() {
		return submissiondata;
	}

	public void setSubmissiondata(String submissiondata) {
		this.submissiondata = submissiondata;
	}

	public String getSubmissionstatus() {
		return submissionstatus;
	}

	public void setSubmissionstatus(String submissionstatus) {
		this.submissionstatus = submissionstatus;
	}

}
