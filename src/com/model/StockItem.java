package com.model;

public class StockItem {

	
	int sitem_no;
	public int getSitem_no() {
		return sitem_no;
	}
	public void setSitem_no(int sitem_no) {
		this.sitem_no = sitem_no;
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
	public int getStock_avail() {
		return stock_avail;
	}
	public void setStock_avail(int stock_avail) {
		this.stock_avail = stock_avail;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getProduct_url() {
		return product_url;
	}
	public void setProduct_url(String product_url) {
		this.product_url = product_url;
	}
	String description;
	String category;
	int stock_avail;
	int price;
	String product_url;
	
}
