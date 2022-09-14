package com.oliveyoungyj.modules.item;

import java.util.List;

public interface ItemService {
	public List<Item> selectList(ItemVo vo) throws Exception;
}
