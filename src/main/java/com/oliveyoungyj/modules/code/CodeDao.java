package com.oliveyoungyj.modules.code;

import java.util.List;

/*import java.util.List;*/

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.oliveyoungyj.modules.code.CodeMapper";
	
	// public List<Code> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }

	public List<Code> selectList(CodeVo vo){ 
		List<Code> list = sqlSession.selectList("com.oliveyoungyj.modules.code.CodeMapper.selectList", vo);
		
		return list; 
	}
	
	// public 
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
}

