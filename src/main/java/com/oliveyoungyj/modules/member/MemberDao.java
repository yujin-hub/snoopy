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
	
	public int insert(Member dto) { 
		return sqlSession.insert(namespace + ".insert", dto); 
	}
	
	public int update(Member dto) { 
		return sqlSession.update(namespace + ".update", dto); 
	}

	public Member selectOne(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;    //codegroup 객체 하나 리턴
	}
	
	public int selectOneCount(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public int selectOneCheckId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneCheckId", dto);
	}
	
	
	//로그인
	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	
	public Member selectOneID(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneID", dto);
	}

}


