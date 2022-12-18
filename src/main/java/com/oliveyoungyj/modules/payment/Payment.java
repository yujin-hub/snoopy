package com.oliveyoungyj.modules.payment;

import com.oliveyoungyj.common.base.Base;

public class Payment extends Base{
	
	public String seq; 
	
	//상품 정보
	public String item_seq;
	public String bname;
	public String name;
	public Integer itemCount;
	public String price;
	public Integer discount;
	
	//주문 정보
	public String user_seq;
	public String shippingName;
	public String recipient;
	public String telecom;
	public String tel;
	public Integer telMid;
	public Integer telEnd;
	public Integer addr1;
	public String addr2;
	public String addr3;
	public String addr4;
	public String shipmentMessage;
	public String coupon;
	public Integer totalPrice;
	public String payDate;
	public Integer state;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getItem_seq() {
		return item_seq;
	}
	public void setItem_seq(String item_seq) {
		this.item_seq = item_seq;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getItemCount() {
		return itemCount;
	}
	public void setItemCount(Integer itemCount) {
		this.itemCount = itemCount;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	public String getUser_seq() {
		return user_seq;
	}
	public void setUser_seq(String user_seq) {
		this.user_seq = user_seq;
	}
	public String getShippingName() {
		return shippingName;
	}
	public void setShippingName(String shippingName) {
		this.shippingName = shippingName;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getTelecom() {
		return telecom;
	}
	public void setTelecom(String telecom) {
		this.telecom = telecom;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Integer getTelMid() {
		return telMid;
	}
	public void setTelMid(Integer telMid) {
		this.telMid = telMid;
	}
	public Integer getTelEnd() {
		return telEnd;
	}
	public void setTelEnd(Integer telEnd) {
		this.telEnd = telEnd;
	}
	public Integer getAddr1() {
		return addr1;
	}
	public void setAddr1(Integer addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAddr3() {
		return addr3;
	}
	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}
	public String getAddr4() {
		return addr4;
	}
	public void setAddr4(String addr4) {
		this.addr4 = addr4;
	}
	public String getShipmentMessage() {
		return shipmentMessage;
	}
	public void setShipmentMessage(String shipmentMessage) {
		this.shipmentMessage = shipmentMessage;
	}
	public String getCoupon() {
		return coupon;
	}
	public void setCoupon(String coupon) {
		this.coupon = coupon;
	}
	public Integer getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	
	
}
