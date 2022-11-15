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
		
//		//여기부터 파일
//        int seq = dao.selectLastSeq(dto); //seq 자동으로 부여되기때문
//
//        int j = 0;
//        for(MultipartFile myFile : dto.getMultipartFile()) {
//
//            if(!myFile.isEmpty()) {
//                // postServiceImpl
//                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
//                UtilUpload.upload(myFile, pathModule, dto);
//
//                dto.setType("1");
//                dto.setDefaultNY(j == 0 ? "1" : "0");
//                dto.setSort(j+1+"");
//                dto.setPseq(seq+"");
//
//                dao.insertUploaded(dto);
//                j++;
//            }
//        }
        
		return result;
	}
	
	@Override
	public int update(Member dto) throws Exception {
		dto.setPw(UtilSecurity.encryptSha256(dto.getPw())); 
		
		return dao.update(dto);
	}
	
	@Override
	public int infoUpdt(Member dto) throws Exception {
		return dao.infoUpdt(dto);
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
	
	@Override
	public int secession(Member dto) throws Exception {
		return dao.secession(dto);
	}
	
	//카카오 로그인
	@Override
	public Member snsLoginCheck(Member dto) throws Exception {
	    return dao.snsLoginCheck(dto);
	}
	
	@Override
    public int kakaoInst(Member dto) throws Exception {
    	try {
    		dao.kakaoInst(dto);
    		return 1;
    	} catch (Exception e) {
    		throw new Exception();
		}
    }
	
	//네이버 로그인
	 @Override
    public int naverInst(Member dto) throws Exception {
		return dao.naverInst(dto);
    }
	
//	@Override
//	public Member imageUpload(Member dto) throws Exception {
//		return dao.imageUpload(dto);
//	}
	
}
