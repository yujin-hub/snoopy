package com.oliveyoungyj.modules.payment;

import java.util.List;

public interface PaymentService {
	public List<Payment> selectList(PaymentVo vo) throws Exception;
	public int insert(Payment dto) throws Exception;
	public Payment selectOne(PaymentVo vo) throws Exception;
}
 