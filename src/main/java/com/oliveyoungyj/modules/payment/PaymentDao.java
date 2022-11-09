package com.oliveyoungyj.modules.payment;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class PaymentDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.oliveyoungyj.modules.payment.PaymentMapper";
	
	public List<Payment> selectList(PaymentVo vo){ 
		List<Payment> list = sqlSession.selectList("com.oliveyoungyj.modules.payment.PaymentMapper.selectList", vo);
		return list; 
	}
	
	public int insert(Payment dto) {
		return sqlSession.insert(namespace+".insert", dto);	
	}
	
	public Payment selectOne(PaymentVo vo) {
		Payment result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;    //codegroup 객체 하나 리턴
	}
	
}
