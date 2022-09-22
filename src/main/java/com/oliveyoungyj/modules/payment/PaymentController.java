package com.oliveyoungyj.modules.payment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/payment/")
public class PaymentController {

	@RequestMapping(value = "payForm")
	public String payForm() throws Exception {
		
		return "infra/payment/user/payForm";
	}
	
	@RequestMapping(value = "payDone")
	public String payDone() throws Exception {
		
		return "infra/payment/user/payDone";
	}
	
}
