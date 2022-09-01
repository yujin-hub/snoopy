package com.oliveyoungyj.modules.codegroup;

// DTO: 기본적으로 테이블 컬럼 설정

public class CodeGroup {
	
	private Integer seq;
	private String property;
	private Integer useNY;
	private Integer delNY;
	
	// getter setter
	public  Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public String getProperty() {
		return property;
	}
	public void setProperty(String property) {
		this.property = property;
	}
	public Integer getUseNY() {
		return useNY;
	}
	public void setUseNY(Integer useNY) {
		this.useNY = useNY;
	}
	public Integer getDelNY() {
		return delNY;
	}
	public void setDelNY(Integer delNY) {
		this.delNY = delNY;
	}

	
}	
