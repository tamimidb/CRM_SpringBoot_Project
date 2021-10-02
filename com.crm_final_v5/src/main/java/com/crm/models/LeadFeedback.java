package com.crm.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "lead_feedback")
@Table(name = "lead_feedback")
public class LeadFeedback {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String feedbackCode;
	private String feedbackType;
	private String selectedName;
	private int rating;
	private String description;
	private String leadFirstName;
	private String leadLastName;
	private String leadEmail;

	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFeedbackCode() {
		return feedbackCode;
	}
	public void setFeedbackCode(String feedbackCode) {
		this.feedbackCode = feedbackCode;
	}
	public String getFeedbackType() {
		return feedbackType;
	}
	public void setFeedbackType(String feedbackType) {
		this.feedbackType = feedbackType;
	}
	public String getSelectedName() {
		return selectedName;
	}
	public void setSelectedName(String selectedName) {
		this.selectedName = selectedName;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getLeadFirstName() {
		return leadFirstName;
	}
	public void setLeadFirstName(String leadFirstName) {
		this.leadFirstName = leadFirstName;
	}
	public String getLeadLastName() {
		return leadLastName;
	}
	public void setLeadLastName(String leadLastName) {
		this.leadLastName = leadLastName;
	}
	public String getLeadEmail() {
		return leadEmail;
	}
	public void setLeadEmail(String leadEmail) {
		this.leadEmail = leadEmail;
	}
	

	
}
