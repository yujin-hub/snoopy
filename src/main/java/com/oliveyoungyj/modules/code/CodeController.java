package com.oliveyoungyj.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/code/")
 
public class CodeController {
	@Autowired
	CodeServiceImpl service;

	public void setSearchAndPaging(CodeVo vo) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShUseNY(vo.getShUseNY() == null ? 1 : vo.getShUseNY());
	}
	
	@RequestMapping(value = "codeList") 
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {

		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
			
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShUseNY(): " + vo.getShUseNY());
		
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list); 
		
		return "infra/code/xdmin/codeList";
	}
	

	@RequestMapping(value = "codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		Code result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		List<Code> add = service.CodeNameAdd(vo);
		model.addAttribute("add", add);
		
		return "infra/code/xdmin/codeForm";
		
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/code/codeForm";
	}
	
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/code/codeForm";
	}
	
	@RequestMapping(value = "codeUele")
	public String codeUele(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeDele")
	public String codeGroupDele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/code/codeList";
	}
	
	
	@RequestMapping(value = "codeView")
	public String codeView(CodeVo vo, Model model) throws Exception {
		
		Code result = service.selectOne(vo);

		model.addAttribute("item",result);
		
		return "infra/code/xdmin/codeForm";
	}
}
