package com.oliveyoungyj.modules.item;

import java.sql.Date;

public class Item {

	public String seq;
	public String brand;
	public String name;
	public String price;
	public String salePrice;
	public Date regist;
	public String numPurchase;
	public Integer stock;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(String salePrice) {
		this.salePrice = salePrice;
	}
	public Date getRegist() {
		return regist;
	}
	public void setRegist(Date regist) {
		this.regist = regist;
	}
	public String getNumPurchase() {
		return numPurchase;
	}
	public void setNumPurchase(String numPurchase) {
		this.numPurchase = numPurchase;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	
	
}
