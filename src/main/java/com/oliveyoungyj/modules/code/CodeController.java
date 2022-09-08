package com.oliveyoungyj.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oliveyoungyj.modules.member.Constants;
import com.oliveyoungyj.modules.member.utilDateTime;


@Controller
@RequestMapping(value = "/code/")

public class CodeController {
	@Autowired
	CodeServiceImpl service;

	@RequestMapping(value = "codeList")
	public String codeList(Model model, CodeVo vo) throws Exception {

		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShUseNY(): " + vo.getShUseNY());
		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? utilDateTime.calculateDayString(utilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShDateStart());  	
		vo.setShDateEnd(vo.getShDateEnd() == null ? utilDateTime.nowString() : vo.getShDateEnd());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeForm")
	public String code() throws Exception {
		
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("Controller result: " + result);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeView")
	public String codeView(CodeVo vo, Model model) throws Exception {
		
		Code result = service.selectOne(vo);

		model.addAttribute("item",result);
		
		return "infra/code/xdmin/codeForm";
	}
}
