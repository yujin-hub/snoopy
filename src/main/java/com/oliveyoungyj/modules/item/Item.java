package com.oliveyoungyj.modules.item;

import org.springframework.web.multipart.MultipartFile;

import com.oliveyoungyj.common.base.Base;

public class Item extends Base{

	public String seq;
	public Integer brand_list_seq;
	public String brand;
	public String name;
	public String bname;
	public String discount;
	public String price;
	public String salePrice;
	public String regist;
	public String numPurchase;
	public String info_item;
	public String info_purchase;
	public Integer useNY;
	public Integer stock;
	
	private MultipartFile[] MultipartFile;

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

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
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

	public String getInfo_item() {
		return info_item;
	}

	public void setInfo_item(String info_item) {
		this.info_item = info_item;
	}

	public String getInfo_purchase() {
		return info_purchase;
	}

	public void setInfo_purchase(String info_purchase) {
		this.info_purchase = info_purchase;
	}

	public Integer getUseNY() {
		return useNY;
	}

	public void setUseNY(Integer useNY) {
		this.useNY = useNY;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	public MultipartFile[] getMultipartFile() {
		return MultipartFile;
	}

	public void setMultipartFile(MultipartFile[] multipartFile) {
		MultipartFile = multipartFile;
	}
	
	
}
