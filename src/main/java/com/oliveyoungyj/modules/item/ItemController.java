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
	

	@RequestMapping(value = "itemListSet")
	public String itemListSet(Model model) throws Exception {

		List<Item> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/item/xdmin/itemListSet";
	}

}