package com.crm.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "activities")
@Table(name = "activities")
public class Activities {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String leadName;
    private String type;
    private String isueeName;
    private String activitiesSubject;
    private String activitiesDueDate;
    private String activitiesStatus;
    private String activitiesPriority;
    private String activitiesDescription;
    
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLeadName() {
		return leadName;
	}
	public void setLeadName(String leadName) {
		this.leadName = leadName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getIsueeName() {
		return isueeName;
	}
	public void setIsueeName(String isueeName) {
		this.isueeName = isueeName;
	}
	public String getActivitiesSubject() {
		return activitiesSubject;
	}
	public void setActivitiesSubject(String activitiesSubject) {
		this.activitiesSubject = activitiesSubject;
	}
	public String getActivitiesDueDate() {
		return activitiesDueDate;
	}
	public void setActivitiesDueDate(String activitiesDueDate) {
		this.activitiesDueDate = activitiesDueDate;
	}
	public String getActivitiesStatus() {
		return activitiesStatus;
	}
	public void setActivitiesStatus(String activitiesStatus) {
		this.activitiesStatus = activitiesStatus;
	}
	public String getActivitiesPriority() {
		return activitiesPriority;
	}
	public void setActivitiesPriority(String activitiesPriority) {
		this.activitiesPriority = activitiesPriority;
	}
	public String getActivitiesDescription() {
		return activitiesDescription;
	}
	public void setActivitiesDescription(String activitiesDescription) {
		this.activitiesDescription = activitiesDescription;
	}

   
	
}
