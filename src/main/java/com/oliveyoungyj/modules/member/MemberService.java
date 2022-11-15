package com.oliveyoungyj.modules.member;

import java.util.List;


public interface MemberService {
	
	public List<Member> selectList(MemberVo vo) throws Exception;
	public int insert(Member dto) throws Exception;
	public int update(Member dto) throws Exception;
	public int infoUpdt(Member dto) throws Exception;
	public int secession(Member dto) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public int selectOneCount(MemberVo vo) throws Exception;
	public int selectOneCheckId(Member dto) throws Exception;
	public int selectOneCheckNick(Member dto) throws Exception;
	public int selectOneCheckpw(Member dto) throws Exception;

	//로그인
	public Member selectOneID(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
	
	//카카오 로그인
	public int kakaoInst(Member dto) throws Exception;
	public Member snsLoginCheck(Member dto) throws Exception;
	 
	//네이버 로그인
	public int naverInst(Member dto) throws Exception;
	  
//	//업로드
//	public Member imageUpload(Member dto) throws Exception;
	
}

