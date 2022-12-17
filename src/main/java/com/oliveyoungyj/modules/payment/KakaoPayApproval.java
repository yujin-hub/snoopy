package com.oliveyoungyj.modules.payment;

import java.util.Date;

public class KakaoPayApproval {
	//response
    private String aid;
    private String tid; 
    private String cid; 
    private String sid; 
    private String partner_order_id;
    private String partner_user_id;
    private String payment_method_type;
    
    //amout 객체 안에 데이터
    private Object amount;
    private Integer total;
    private Integer tax_free;
    private Integer vat;
    private Integer point;
    private Integer discount;
    
    //card_info 객체 안에 데이터
    private Object card_info;
	private String purchase_corp;
	private String purchase_corp_code;
    private String issuer_corp;
    private String issuer_corp_code;
    private String bin;
    private String card_type;
    private String install_month;
    private String approved_id;
    private String card_mid;
    private String interest_free_install;
    private String card_item_code;
    private String item_name;
    private String item_code;
    private String payload;
    private Integer quantity;
    private Integer tax_free_amount;
    private Integer vat_amount;
    private Date created_at;
    private Date approved_at;
    private String pg_token;
}
