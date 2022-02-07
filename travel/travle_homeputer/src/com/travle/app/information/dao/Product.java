package com.travle.app.information.dao;

import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = -427400572038677000L;

	private String productId;
	private String pname;
	private String description;
	private String category;
	private String filename;
	private String urlname;

	public String getUrlname() {
		return urlname;
	}

	public void setUrlname(String urlname) {
		this.urlname = urlname;
	}

	public Product() {

	}

	public Product(String productId, String pname) {
		this.productId = productId;
		this.pname = pname;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}