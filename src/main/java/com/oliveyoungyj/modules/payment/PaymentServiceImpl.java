package com.oliveyoungyj.modules.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

@Service
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	PaymentDao dao;
	
	@Override
	public List<Payment> selectList(PaymentVo vo) throws Exception {
		List<Payment> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Payment dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		
		return result;
	}
	
	@Override
	public Payment selectOne(PaymentVo vo) throws Exception {
		Payment result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		
		return result;
	}
	
	//카카오페이
	// header() 셋팅
	private HttpHeaders getHeaders() throws Exception {
	
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 423167c65bbabef1bf2ec4ed1f73671b");
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		return headers;
	}
	
	//결제준비
	public KakaoPayReady payReady(Payment dto) throws Exception {
		
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		
		params.add("cid", "TC0ONETIME");  //테스트용으로 제공되는 cid
		params.add("partner_order_id", "oliveyoung");
		params.add("partner_user_id", "oliveyoung");
		params.add("item_name", "OliveYoung");
		params.add("quantity", "1");
		params.add("total_amount", "38000");
		params.add("tax_free_amount", "0");
		params.add("approval_url", "http://3.38.214.188//payment/kakaopayApproval");
		params.add("cancel_url", "http://3.38.214.188/payment/kakaopayCancel");
		params.add("fail_url", "http://3.38.214.188/payment/kakaopayFail");
		//url은 앱 정보에 등록된 웹 플랫폼 도메인과 일치해야 함.
		
		HttpEntity<MultiValueMap<String, String>> body  = new HttpEntity<MultiValueMap<String, String>>(params, this.getHeaders());
		// 외부url요청 통로 열기.
		RestTemplate template = new RestTemplate();
		String url = "https://kapi.kakao.com/v1/payment/ready";
        // template으로 값을 보내고 받아온 ReadyResponse값 readyResponse에 저장.
		KakaoPayReady KakaopayReady = template.postForObject(url, body, KakaoPayReady.class);
		
		return KakaopayReady;
	}
		
	//결제승인
	public KakaoPayApproval payApprove(String tid, String pgToken, Payment dto) throws Exception  {
		
		// request값 담기.
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("tid", tid); 
		params.add("partner_order_id", "oliveyoung"); //준비랑 똑같아야 됨
		params.add("partner_user_id", "oliveyoung");
		params.add("pg_token", pgToken);
		
        // 하나의 map안에 header와 parameter값을 담아줌.
		HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(params, this.getHeaders());
		
        // 외부url 통신
		RestTemplate template = new RestTemplate();
		String url = "https://kapi.kakao.com/v1/payment/approve";
        // 보낼 외부 url, 요청 메시지(header,parameter), 처리후 값을 받아올 클래스. 
		KakaoPayApproval KakaoPayApproval = template.postForObject(url, requestEntity, KakaoPayApproval.class);
		
		return KakaoPayApproval;
	}
}
