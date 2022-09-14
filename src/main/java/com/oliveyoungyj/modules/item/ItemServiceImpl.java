package com.oliveyoungyj.modules.item;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service 
public class ItemServiceImpl implements ItemService{
	@Autowired
	ItemDao dao;
	
	@Override
	public List<Item> selectList(ItemVo vo) throws Exception {
		List<Item> list = dao.selectList(vo);
		return list;
	}
}
