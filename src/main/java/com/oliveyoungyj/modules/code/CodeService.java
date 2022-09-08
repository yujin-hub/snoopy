package com.oliveyoungyj.modules.code;

import java.util.List;

public interface CodeService {
	public List<Code> selectList(CodeVo vo) throws Exception; 
	public int insert(Code dto) throws Exception;
	public Code selectOne(CodeVo vo) throws Exception;
}
