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
	
	@Override
	public Item selectOne(ItemVo vo) throws Exception {
		Item result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(ItemVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
}