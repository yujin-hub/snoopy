package com.oliveyoungyj.modules.item;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.oliveyoungyj.common.util.UtilUpload;

@Service 
public class ItemServiceImpl implements ItemService{
	
	@Autowired
	ItemDao dao;
	
	@Override
	public int insert(Item dto) throws Exception {

		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		
		//여기부터 파일
        int seq = dao.selectLastSeq(dto); //seq 자동으로 부여되기때문

        int j = 0;
        for(MultipartFile myFile : dto.getMultipartFile()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                UtilUpload.upload(myFile, pathModule, dto);

                dto.setType("1");
                dto.setDefaultNY(j == 0 ? "1" : "0");
                dto.setSort(j+1+"");
                dto.setPseq(seq+"");

                dao.insertUploaded(dto);
                j++;
            }
        }
        
		return result;
	}
	
	@Override
	public int update(Item dto) throws Exception {
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Item dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(ItemVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@Override
	public List<Item> selectList(ItemVo vo) throws Exception {
		List<Item> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public Item selectOne(ItemVo vo) throws Exception {
		Item result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(ItemVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Item> itemNameAdd(ItemVo vo) throws Exception {
		return dao.itemNameAdd(vo);
	}
	
	@Override
	public Item imageUpload(Item dto) throws Exception {
		return dao.imageUpload(dto);
	}
	
	//메인페이지
	@Override
	public List<Item> top(ItemVo vo) throws Exception {
		return dao.top(vo); 
	}
	
	@Override
	public List<Item> weeklyspecial(ItemVo vo) throws Exception {
		return dao.weeklyspecial(vo); 
	}
	
	@Override
	public List<Item> CK(ItemVo vo) throws Exception {
		return dao.CK(vo); 
	}
	
	@Override
	public List<Item> AHC(ItemVo vo) throws Exception {
		return dao.AHC(vo); 
	}
	
	@Override
	public List<Item> AB(ItemVo vo) throws Exception {
		return dao.AB(vo); 
	}
	
	@Override
	public List<Item> Beyond(ItemVo vo) throws Exception {
		return dao.Beyond(vo); 
	}
	
	@Override
	public List<Item> DD(ItemVo vo) throws Exception {
		return dao.DD(vo); 
	}

	@Override
	public List<Item> BO(ItemVo vo) throws Exception {
		return dao.BO(vo); 
	}
}