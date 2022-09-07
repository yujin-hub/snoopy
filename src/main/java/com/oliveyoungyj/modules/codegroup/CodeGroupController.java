package com.oliveyoungyj.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oliveyoungyj.modules.member.Constants;
import com.oliveyoungyj.modules.member.utilDateTime;

@Controller
@RequestMapping(value = "/codeGroup/")

public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception {

		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNY(): " + vo.getShDelNY());
		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? utilDateTime.calculateDayString(utilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShDateStart());  	
		vo.setShDateEnd(vo.getShDateEnd() == null ? utilDateTime.nowString() : vo.getShDateEnd());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}	
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm() throws Exception {
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("Controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
}
