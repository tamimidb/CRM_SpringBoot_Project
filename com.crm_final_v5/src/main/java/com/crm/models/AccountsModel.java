package com.crm.models;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity(name = "accounts")
@Table(name = "accounts")
public class AccountsModel {
	
	
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
    private int id;
	private String accountCode;
	private String accountName;
	private String parentAccountName;
	private String email;
	private String phone;
	private String website;
	private String rating;
	private int accountNumber;
	private double annualRevenue;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccountCode() {
		return accountCode;
	}
	public void setAccountCode(String accountCode) {
		this.accountCode = accountCode;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getParentAccountName() {
		return parentAccountName;
	}
	public void setParentAccountName(String parentAccountName) {
		this.parentAccountName = parentAccountName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public int getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}
	public double getAnnualRevenue() {
		return annualRevenue;
	}
	public void setAnnualRevenue(double annualRevenue) {
		this.annualRevenue = annualRevenue;
	}
	
	

}
