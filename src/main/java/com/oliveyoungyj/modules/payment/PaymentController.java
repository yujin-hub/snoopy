package com.oliveyoungyj.modules.payment;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
//	@ResponseBody
//	@RequestMapping(value = "kakaopay")
//	public String kakaopay(@ModelAttribute("dto") Payment dto, Model model, @RequestParam("bname") String bname, @RequestParam("name") String name,  @RequestParam("total") String total, @RequestParam("id") String id) throws Exception {
//		
//		URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
//		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//		conn.setRequestMethod("POST");
//		conn.setRequestProperty("Authorization", "KakaoAK 423167c65bbabef1bf2ec4ed1f73671b");
//		conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//		conn.setDoOutput(true);
//		// OutputStream으로 POST 데이터를 넘겨주겠다는 옵션.
//		conn.setDoInput(true);
//		// InputStream으로 서버로 부터 응답을 받겠다는 옵션.
//		Map<String, String> params = new HashMap<String, String>();
//		params.put("cid", "TC0ONETIME");
//        params.put("partner_order_id", "Olive Young");
//        params.put("partner_user_id", id);
//        params.put("item_name", name);
//        params.put("total_amount", total);
//        params.put("tax_free_amount", "0");
//        params.put("approval_url", "http://localhost:8080/payment/payDone");
//        params.put("cancel_url", "http://localhost:8080/paymet/payForm");
//        params.put("fail_url", "http://localhost:8080/paymet/payForm");
//        
//        String string_params = new String();
//		for (Map.Entry<String, String> elem : params.entrySet()) {
//			string_params += (elem.getKey() + "=" + elem.getValue() + "&");
//		}
//		OutputStream give = conn.getOutputStream();
//		// Request Body에 Data를 담기위해 OutputStream 객체를 생성.
//		
//		DataOutputStream datagiven = new DataOutputStream(give);
//		//데이터의 정보를 출력하는 객체
//		
//		datagiven.write(string_params.getBytes());
//		// Request Body에 Data 셋팅.
//		
//		datagiven.close(); 
//		// OutputStream 종료.
//
//		int result = conn.getResponseCode();
//		// 실제 서버로 Request 요청 하는 부분. (응답 코드를 받는다. 200 성공, 나머지 에러)
//		BufferedReader changer;
//		if (result == 200) {
//			changer = new BufferedReader((new InputStreamReader(conn.getInputStream())));
//			//결과 받아서 저장
//		} else {
//			changer = new BufferedReader((new InputStreamReader(conn.getErrorStream())));
//		}
//		
//		return changer.readLine();
//		//결과를 한 줄로 나타냄 - url
//	} 
	
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
	
}
