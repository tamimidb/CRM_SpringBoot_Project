package com.crm.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity(name = "campaigns")
@Table(name = "campaigns")
public class Campaign {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String campaignCode;
	private String campaignName;
	private String type;
	private String status;
	private String startDate;
	private String endDate;
	private String campaignOwner;
	private String expectedRevenue;
	private String budgetedCost;
	private String actualCost;
	private String expectedResponse;
	private String createdBy;
	private String modifiedBy;
	private String createdTime;
	private String modifiedTime;
	private String parentCampaign;
	private String description;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	

	public String getCampaignCode() {
		return campaignCode;
	}

	public void setCampaignCode(String campaignCode) {
		this.campaignCode = campaignCode;
	}

	public String getCampaignName() {
		return campaignName;
	}

	public void setCampaignName(String campaignName) {
		this.campaignName = campaignName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getCampaignOwner() {
		return campaignOwner;
	}

	public void setCampaignOwner(String campaignOwner) {
		this.campaignOwner = campaignOwner;
	}

	public String getExpectedRevenue() {
		return expectedRevenue;
	}

	public void setExpectedRevenue(String expectedRevenue) {
		this.expectedRevenue = expectedRevenue;
	}

	public String getBudgetedCost() {
		return budgetedCost;
	}

	public void setBudgetedCost(String budgetedCost) {
		this.budgetedCost = budgetedCost;
	}

	public String getActualCost() {
		return actualCost;
	}

	public void setActualCost(String actualCost) {
		this.actualCost = actualCost;
	}

	public String getExpectedResponse() {
		return expectedResponse;
	}

	public void setExpectedResponse(String expectedResponse) {
		this.expectedResponse = expectedResponse;
	}


	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public String getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}

	public String getModifiedTime() {
		return modifiedTime;
	}

	public void setModifiedTime(String modifiedTime) {
		this.modifiedTime = modifiedTime;
	}

	public String getParentCampaign() {
		return parentCampaign;
	}

	public void setParentCampaign(String parentCampaign) {
		this.parentCampaign = parentCampaign;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}