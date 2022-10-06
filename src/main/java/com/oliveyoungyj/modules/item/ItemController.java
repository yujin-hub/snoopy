package com.oliveyoungyj.modules.item;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/item/")
public class ItemController {

	@Autowired
	ItemServiceImpl service;
	
	public void setSearchAndPaging(ItemVo vo) throws Exception{
		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "itemListSet")
	public String itemListSet(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<Item> list = service.selectList(vo);
			model.addAttribute("list", list);
		}

		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShStock(): " + vo.getShStock());
		System.out.println("vo.getShDateStart(): " + vo.getShDateStart());
		System.out.println("vo.getShDateEnd(): " + vo.getShDateEnd());
		System.out.println("vo.getShOptionDate(): " + vo.getShOptionDate());
		
		
		return "infra/item/xdmin/itemListSet";
	}
	
	@RequestMapping(value = "access")
	public String access() throws Exception {
		
		return "infra/item/user/access";
	}
	
	@RequestMapping(value = "itemList")
	public String itemList() throws Exception {
		
		return "infra/item/user/itemList";
	}
	
	@RequestMapping(value = "itemView")
	public String itemView() throws Exception {
		
		return "infra/item/user/itemView";
	}
	
	@RequestMapping(value = "payForm")
	public String payForm() throws Exception {
		
		return "infra/payment/user/payForm";
	}
	
	@RequestMapping(value = "payDone")
	public String payDone() throws Exception {
		
		return "infra/payment/user/payDone";
	}
	
	@RequestMapping(value = "itemSet")
	public String itemSet() throws Exception {
		
		return "infra/item/xdmin/itemListSet";
	}
	
	@RequestMapping(value = "itemListDmin")
	public String itemListDmin() throws Exception {
		
		return "infra/item/xdmin/itemListDmin";
	}
}