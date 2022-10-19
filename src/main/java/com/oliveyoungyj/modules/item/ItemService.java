package com.oliveyoungyj.modules.item;

import java.util.List;

public interface ItemService {
	public List<Item> selectList(ItemVo vo) throws Exception;
	public List<Item> itemNameAdd(ItemVo vo) throws Exception;
	public int insert(Item dto) throws Exception;
	public int update(Item dto) throws Exception;
	public int uelete(Item dto) throws Exception;
	public int delete(ItemVo vo) throws Exception;
	public Item selectOne(ItemVo vo) throws Exception;
	public int selectOneCount(ItemVo vo) throws Exception;
	
	//업로드
	public Item imageUpload(Item dto) throws Exception;
	
	//메인페이지
	public List<Item> top(ItemVo vo) throws Exception;
	public List<Item> weeklyspecial(ItemVo vo) throws Exception;
	public List<Item> CK(ItemVo vo) throws Exception;
	public List<Item> AHC(ItemVo vo) throws Exception;
	public List<Item> AB(ItemVo vo) throws Exception;
	public List<Item> Beyond(ItemVo vo) throws Exception;
	public List<Item> DD(ItemVo vo) throws Exception;
	public List<Item> BO(ItemVo vo) throws Exception;
}

