package com.kjl.fp.payment;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PaymentMapper {
	
	// 세부 결제정보 저장
	public int insertPaymentDetail() throws Exception;
	
	// 기본 결제정보 저장
	public int insertPaymentInfo() throws Exception;
}
