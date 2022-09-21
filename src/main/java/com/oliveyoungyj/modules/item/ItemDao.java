package com.oliveyoungyj.modules.item;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ItemDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.oliveyoungyj.modules.item.ItemMapper";
	
	public List<Item> selectList(ItemVo vo){ 
		List<Item> list = sqlSession.selectList("com.oliveyoungyj.modules.item.ItemMapper.selectList", vo);
		return list; 
	}
	
	public Item selectOne(ItemVo vo) {
		Item result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;   
	}
	
	public int selectOneCount(ItemVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);}

}
