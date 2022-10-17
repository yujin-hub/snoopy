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
	
	public int insert(Item dto) { 
		return sqlSession.insert(namespace + ".insert", dto); 
	}
	
	public int update(Item dto) { 
		return sqlSession.update(namespace + ".update", dto); 
	}
	
	public int uelete(Item dto) { 
		return sqlSession.update(namespace + ".uelete", dto); 
	}
	
	public int delete(ItemVo vo) { 
		return sqlSession.delete(namespace + ".delete", vo); 
	}
	
	public Item selectOne(ItemVo vo) {
		Item result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;   
	}
	
	public int selectOneCount(ItemVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);}

	public List<Item> itemNameAdd(ItemVo vo) {
		return sqlSession.selectList(namespace + ".itemNameAdd", vo);
	}
	
	public int selectLastSeq(Item dto) {
		return sqlSession.selectOne(namespace + ".selectLastSeq", dto);
	}

	public void insertUploaded(Item dto) {
		sqlSession.selectOne(namespace + ".insertUploaded", dto);
	}
	
	public Item imageUpload(Item dto) {
		return sqlSession.selectOne(namespace + ".imageUpload", dto);
	}
	
}