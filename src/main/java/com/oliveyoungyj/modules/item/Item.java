package com.oliveyoungyj.modules.item;

import com.oliveyoungyj.common.base.Base;

public class Item extends Base{

	public String seq;
	public Integer brand_list_seq;
	public String brand;
	public String name;
	public String price;
	public String salePrice;
	public String regist;
	public String numPurchase;
	public Integer stock;
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	
	public Integer getBrand_list_seq() {
		return brand_list_seq;
	}
	public void setBrand_list_seq(Integer brand_list_seq) {
		this.brand_list_seq = brand_list_seq;
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
	public String getRegist() {
		return regist;
	}
	public void setRegist(String regist) {
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
