package com.oliveyoungyj.modules.item;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String itemListSet(Model model, ItemVo vo) throws Exception {
		
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
		
		
		List<Item> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/item/xdmin/itemListSet";
	}

}