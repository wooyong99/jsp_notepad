package com.exam_dto;

import java.io.Serializable;

// Product 클래스는 즉, 자바빈 bean이 된다
public class Product implements Serializable{ 
	
	private static final long serialVersionUID = -8293157550749661590L;
	
	private String product_Id;
	private String product_name;
	private Integer product_price;
	private String product_desc;
	private String manufact;
	private String category;
	private long product_stock;
	private String condition;
	private String filename;
	private int quantity;


	public Product() {
	}
	
	public String getProduct_Id() {
		return product_Id;
	}
	public Product(String product_Id, String product_name, Integer product_price) {
		super();
		this.product_Id = product_Id;
		this.product_name = product_name;
		this.product_price = product_price;
	}
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setProduct_Id(String product_Id) {
		this.product_Id = product_Id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public Integer getProduct_price() {
		return product_price;
	}
	public void setProduct_price(Integer product_price) {
		this.product_price = product_price;
	}
	public String getProduct_desc() {
		return product_desc;
	}
	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}
	public String getManufact() {
		return manufact;
	}
	public void setManufact(String manufact) {
		this.manufact = manufact;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(long product_stock) {
		this.product_stock = product_stock;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}

	
	public String getFilename() { return filename; } 
	public void setFilename(String filename) { this.filename = filename; }
	 
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
