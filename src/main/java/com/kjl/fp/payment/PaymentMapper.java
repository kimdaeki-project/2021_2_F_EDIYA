package com.kjl.fp.payment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kjl.fp.cart.CartVO;


@Mapper
public interface PaymentMapper {
	
	// 결제 후 결제정보 가져오기
	public PaymentInfoVO selectPaymentOne(PaymentInfoVO paymentInfoVO) throws Exception;
	
	// 기본 결제정보 저장
	public int insertPaymentInfo(PaymentInfoVO paymentInfoVO) throws Exception;
	
	// 카드 결제정보 저장
	public int insertPaymentCard(PaymentCardVO paymentCardVO) throws Exception;
	
	// 아이템 리스트 저장
	public int insertPaymentItem(PaymentItemListVO itemListVO) throws Exception;
	
	// 결제 후 장바구니에서 삭제
	public int deletePaymentAfter(CartVO cartVO) throws Exception;
}

