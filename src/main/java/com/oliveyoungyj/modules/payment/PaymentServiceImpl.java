package com.oliveyoungyj.modules.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	PaymentDao dao;
	
	@Override
	public List<Payment> selectList(PaymentVo vo) throws Exception {
		List<Payment> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Payment dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		
		return result;
	}
	
	@Override
	public Payment selectOne(PaymentVo vo) throws Exception {
		Payment result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		
		return result;
	}
}
