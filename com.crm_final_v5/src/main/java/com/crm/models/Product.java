package com.crm.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "product")
@Table(name = "product")
public class Product {

	@Id
	private int id;
	private String productCode;
	private String parentProduct;
	private String productName;
	private int stock;
	private int rate;
	private double mrp;
	private double costPrice;
	private double caseSize;
	private double weightPerPieces;
	private String priceOfProduct;
	private String description;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getParentProduct() {
		return parentProduct;
	}
	public void setParentProduct(String parentProduct) {
		this.parentProduct = parentProduct;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public double getMrp() {
		return mrp;
	}
	public void setMrp(double mrp) {
		this.mrp = mrp;
	}
	public double getCostPrice() {
		return costPrice;
	}
	public void setCostPrice(double costPrice) {
		this.costPrice = costPrice;
	}
	public double getCaseSize() {
		return caseSize;
	}
	public void setCaseSize(double caseSize) {
		this.caseSize = caseSize;
	}
	public double getWeightPerPieces() {
		return weightPerPieces;
	}
	public void setWeightPerPieces(double weightPerPieces) {
		this.weightPerPieces = weightPerPieces;
	}
	public String getPriceOfProduct() {
		return priceOfProduct;
	}
	public void setPriceOfProduct(String priceOfProduct) {
		this.priceOfProduct = priceOfProduct;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	
	
	
}
