package com.oliveyoungyj.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	

	@RequestMapping(value = "memberList")
	public String codeList(Model model, MemberVo vo) throws Exception {

		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDateStart(): " + vo.getShDateStart());
		System.out.println("vo.getShDateEnd(): " + vo.getShDateEnd());
		System.out.println("vo.getShOptionDate(): " + vo.getShOptionDate());
		System.out.println("vo.getShGender(): " + vo.getShGender());
		System.out.println("vo.getShUserDelNY(): " + vo.getShUserDelNY());
		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? utilDateTime.calculateDayString(utilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShDateStart());  	
		vo.setShDateEnd(vo.getShDateEnd() == null ? utilDateTime.nowString() : vo.getShDateEnd());
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value = "login")
	public String login() throws Exception {
		
		return "infra/member/user/login";
	}
	
	@RequestMapping(value = "regForm")
	public String regForm() throws Exception {
		
		return "infra/member/user/regForm";
	}
	
	@RequestMapping(value = "memberForm")
	public String memberForm() throws Exception {
		
		return "infra/member/xdmin/memberForm";
	}
	
}
