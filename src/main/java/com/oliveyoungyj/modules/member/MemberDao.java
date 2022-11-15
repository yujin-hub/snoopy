package com.oliveyoungyj.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	public int infoUpdt(Member dto) { 
		return sqlSession.update(namespace + ".infoUpdt", dto); 
	}
	
	public int secession(Member dto) { 
		return sqlSession.update(namespace + ".secession", dto); 
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
	
	public int selectOneCheckNick(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneCheckNick", dto);
	}
	
	public int selectOneCheckpw(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneCheckpw", dto);
	}

	public static String getSessionSeqCore(HttpServletRequest httpServletRequest) {
		HttpSession httpSession =  httpServletRequest.getSession();
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		return rtSeq;
	}
	
	//로그인
	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	
	public Member selectOneID(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneID", dto);
	}
	
	//카카오 로그인
	public int kakaoInst(Member dto) {
		return sqlSession.insert(namespace + ".kakaoInst", dto);
	}
	
	public Member snsLoginCheck(Member dto) {
	    return sqlSession.selectOne(namespace + ".snsLoginCheck", dto);
	}
	
	//네이버 로그인
	public int naverInst(Member dto) {
		return sqlSession.insert(namespace + ".naverInst", dto);
	}
	
//	public int selectLastSeq(Member dto) {
//		return sqlSession.selectOne(namespace + ".selectLastSeq", dto);
//	}

//	public void insertUploaded(Member dto) {
//		sqlSession.selectOne(namespace + ".insertUploaded", dto);
//	}
	
//	public Member imageUpload(Member dto) {
//		return sqlSession.selectOne(namespace + ".imageUpload", dto);
//	}
	
}


