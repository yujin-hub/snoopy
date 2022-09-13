package com.oliveyoungyj.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.oliveyoungyj.modules.codegroup.CodeGroupMapper";
	
	
	// public List<CodeGroup> selectList(CodeGroupVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	// public 
	public List<CodeGroup> selectList(CodeGroupVo vo){ 
		// List<CodeGroup> list = sqlSession.selectList(namespace + ".selectList", vo);
		List<CodeGroup> list = sqlSession.selectList("com.oliveyoungyj.modules.codegroup.CodeGroupMapper.selectList", vo);
		return list; 
	}   // codegroup값 여러개 리턴
	
	public int insert(CodeGroup dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	public int update(CodeGroup dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(CodeGroup dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(CodeGroupVo vo) { return sqlSession.delete(namespace + ".delete", vo); }

	public CodeGroup selectOne(CodeGroupVo vo) {
		CodeGroup result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;    //codegroup 객체 하나 리턴
	}

}