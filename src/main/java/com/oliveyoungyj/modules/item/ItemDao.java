package com.oliveyoungyj.modules.item;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	public static String getSessionSeqCore(HttpServletRequest httpServletRequest) {
		HttpSession httpSession =  httpServletRequest.getSession();
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		return rtSeq;
	}
	
	public int selectOneCount(ItemVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);}

	public List<Item> itemNameAdd(ItemVo vo) {
		return sqlSession.selectList(namespace + ".itemNameAdd", vo);
	}
	
	
	// 업로드
	public int selectLastSeq(Item dto) {
		return sqlSession.selectOne(namespace + ".selectLastSeq", dto);
	}

	public int  insertUploaded(Item dto) {
		return sqlSession.selectOne(namespace + ".insertUploaded", dto);
	}
	
	public List<Item> imageUpload(ItemVo vo) {
		return sqlSession.selectList(namespace + ".imageUpload", vo);
	}
	
	
	//메인페이지
	public List<Item> top(ItemVo vo) {
		return sqlSession.selectList(namespace + ".top", vo);
	}

	public List<Item> weeklyspecial(ItemVo vo) {
		return sqlSession.selectList(namespace + ".weeklyspecial", vo);
	}
	
	public List<Item> CK(ItemVo vo) {
		return sqlSession.selectList(namespace + ".CK", vo);
	}
	
	public List<Item> AHC(ItemVo vo) {
		return sqlSession.selectList(namespace + ".AHC", vo);
	}
	
	public List<Item> AB(ItemVo vo) {
		return sqlSession.selectList(namespace + ".AB", vo);
	}
	
	public List<Item> Beyond(ItemVo vo) {
		return sqlSession.selectList(namespace + ".Beyond", vo);
	}
	
	public List<Item> DD(ItemVo vo) {
		return sqlSession.selectList(namespace + ".DD", vo);
	}
	
	public List<Item> BO(ItemVo vo) {
		return sqlSession.selectList(namespace + ".BO", vo);
	}
	
	
}