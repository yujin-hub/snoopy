package com.oliveyoungyj.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oliveyoungyj.common.util.UtilSecurity;


@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list =	dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Member dto) throws Exception {
    	dto.setPw(UtilSecurity.encryptSha256(dto.getPw())); 

		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int update(Member dto) throws Exception {
		dto.setPw(UtilSecurity.encryptSha256(dto.getPw())); 
		
		return dao.update(dto);
	}
	
	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		Member result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		dto.setPw(UtilSecurity.encryptSha256(dto.getPw())); 
		return dao.selectOneLogin(dto);
	}
	
	@Override
	public int selectOneCheckId(Member dto) throws Exception {
		return dao.selectOneCheckId(dto);
	}
	
	@Override
	public int selectOneCheckNick(Member dto) throws Exception {
		return dao.selectOneCheckNick(dto);
	}
	
	@Override
	public int selectOneCheckpw(Member dto) throws Exception {
		return dao.selectOneCheckpw(dto);
	}
	
	@Override
	public Member selectOneID(Member dto) throws Exception {
		return dao.selectOneID(dto);
	}
	
	
}
