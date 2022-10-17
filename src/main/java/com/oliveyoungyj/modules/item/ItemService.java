package com.oliveyoungyj.modules.item;

import java.util.List;

public interface ItemService {
	public List<Item> selectList(ItemVo vo) throws Exception;
	public List<Item> itemNameAdd(ItemVo vo) throws Exception;
	public int insert(Item dto) throws Exception;
	public Item selectOne(ItemVo vo) throws Exception;
	public int selectOneCount(ItemVo vo) throws Exception;
	
	//업로드
		public Item imageUpload(Item dto) throws Exception;
}
