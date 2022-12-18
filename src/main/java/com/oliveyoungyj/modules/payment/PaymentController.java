package com.oliveyoungyj.modules.payment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.oliveyoungyj.modules.item.Item;
import com.oliveyoungyj.modules.item.ItemServiceImpl;
import com.oliveyoungyj.modules.item.ItemVo;

@Controller
@RequestMapping(value = "/payment/")
@SessionAttributes({"dtoPay", "tid"}) 
public class PaymentController {
	
	@Autowired
	PaymentServiceImpl service; 
	
	@Autowired
	ItemServiceImpl itemService;
	
	@ModelAttribute("dtoPay")
	public Payment setEmptyPayment() {  //빈 dto를 만들어줘야 세션 오류 안남
		return new Payment();
	}

	@RequestMapping(value = "payList")
	public String payList(@ModelAttribute("vo") PaymentVo vo, Model model) throws Exception {

		List<Payment> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "infra/payment/xdmin/payList";
	}
	
	
	@RequestMapping(value = "payInst")
	public String payInst(PaymentVo vo, Payment dto, RedirectAttributes redirectAttributes) throws Exception {

		service.insert(dto); 
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/payment/payDone";
	}
	
	@RequestMapping(value = "payForm")
	public String payForm(Model model, @ModelAttribute("dto") Payment dto, @ModelAttribute("vo") ItemVo vo) throws Exception {
		
		Item result = itemService.selectOne(vo);
		model.addAttribute("pay", result);
		
		return "infra/payment/user/payForm";
	}
	
	@RequestMapping(value = "payDone")
	public String payDone(Model model, @ModelAttribute("dto") Payment dto, @ModelAttribute("vo") ItemVo vo) throws Exception {
		
		Item result = itemService.selectOne(vo);
		model.addAttribute("done", result);
		
		return "infra/payment/user/payDone";
	}
	
	//카카오페이
	@ResponseBody
	@RequestMapping(value="kakaopayReady")
	public KakaoPayReady payReady (@ModelAttribute("dtoPay") Payment dto, Model model) throws Exception {
		 
		KakaoPayReady kakaopayReady = service.payReady(dto);
		model.addAttribute("tid", kakaopayReady.getTid());

		return kakaopayReady;
	}
	
	@RequestMapping(value="kakaopayApproval")
	public String payCompleted(@RequestParam("pg_token") String pgToken, @ModelAttribute("tid") String tid, @ModelAttribute("dtoPay") Payment dto,  Model model, HttpSession httpSession, Item dto1) throws Exception {
		
		// 카카오 결제 요청하기
		KakaoPayApproval kakaoPayApproval = service.payApprove(tid, pgToken, dto);
		
		//return된 객체를 map에 매핑
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.convertValue(kakaoPayApproval, Map.class);
		
		for(String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			System.out.println("[key]: " + key + ", [value]: " + value);
		}
		
		Map<String, Object> amount = new HashMap<String, Object>();
		amount = (Map<String, Object>) map.get("amount");
		
		for (String key : amount.keySet()) {
			String value = String.valueOf(amount.get(key));
		}
		
		//결제 후 db에 insert
		dto.setName(map.get("item_name").toString());
		dto.setPrice(amount.get("total").toString());
		dto.setUser_seq((String)httpSession.getAttribute("sessSeq"));
		
		Payment payment = (Payment) httpSession.getAttribute("dtoPay");
		
		return "infra/payment/user/payDone";
	}
	
	// 결제 취소시 실행 url
	@GetMapping("kakaopayCancel")
	public String payCancel() {
		return "redirect:/payment/payForm";
	}
    
	// 결제 실패시 실행 url    	
	@GetMapping("kakaopayFail")
	public String payFail() {
		return "redirect:/payment/payForm"; 
	}
}
