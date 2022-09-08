package com.oliveyoungyj.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception; 
	public int insert(CodeGroup dto) throws Exception;
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception;
}
