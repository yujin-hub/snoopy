package com.oliveyoungyj.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {

	public String seq;
	public String codeGroup_seq;
	public String propertyKor;
	public Integer codeseq;
	public String anotherCode;
	public String name;
	public String nameEng;
	public Integer useNY;
	public String regDate;
	public String modDate;
	
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCodeGroup_seq() {
		return codeGroup_seq;
	}
	public void setCodeGroup_seq(String codeGroup_seq) {
		this.codeGroup_seq = codeGroup_seq;
	}
	public String getPropertyKor() {
		return propertyKor;
	}
	public void setPropertyKor(String propertyKor) {
		this.propertyKor = propertyKor;
	}
	public Integer getCodeseq() {
		return codeseq;
	}
	public void setCodeseq(Integer codeseq) {
		this.codeseq = codeseq;
	}
	public String getAnotherCode() {
		return anotherCode;
	}
	public void setAnotherCode(String anotherCode) {
		this.anotherCode = anotherCode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNameEng() {
		return nameEng;
	}
	public void setNameEng(String nameEng) {
		this.nameEng = nameEng;
	}
	public Integer getUseNY() {
		return useNY;
	}
	public void setUseNY(Integer useNY) {
		this.useNY = useNY;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getModDate() {
		return modDate;
	}
	public void setModDate(String modDate) {
		this.modDate = modDate;
	}
	
}
