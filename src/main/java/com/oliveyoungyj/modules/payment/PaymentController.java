package com.oliveyoungyj.modules.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oliveyoungyj.modules.item.Item;
import com.oliveyoungyj.modules.item.ItemServiceImpl;
import com.oliveyoungyj.modules.item.ItemVo;

@Controller
@RequestMapping(value = "/payment/")
public class PaymentController {
	
	@Autowired
	PaymentServiceImpl service; 
	
	@Autowired
	ItemServiceImpl itemService;

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
	public String payDone() throws Exception {
		
		return "infra/payment/user/payDone";
	}
	
}
