package com.oliveyoungyj.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.oliveyoungyj.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo){ 
		List<Member> list = sqlSession.selectList("com.oliveyoungyj.modules.member.MemberMapper.selectList", vo);
		return list; 
	}

}