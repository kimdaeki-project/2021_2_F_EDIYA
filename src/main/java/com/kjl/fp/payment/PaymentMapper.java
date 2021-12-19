package com.kjl.fp.payment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kjl.fp.cart.CartVO;
import com.kjl.fp.member.CouponVO;
import com.kjl.fp.member.Coupon_MemberVO;


@Mapper
public interface PaymentMapper {
	
	// 결제 후 결제정보 가져오기
	public PaymentInfoVO selectPaymentOne(PaymentInfoVO paymentInfoVO) throws Exception;
	
	// 해당 결제번호의 아이템 리스트 가져오기
	public List<PaymentItemListVO> selectPaymentItem(PaymentInfoVO paymentInfoVO) throws Exception;
	
	// 스탬프 갯수 가져오기
	public Integer selectStampCount(String userName) throws Exception;
	
	// 기본 결제정보 저장
	public int insertPaymentInfo(PaymentInfoVO paymentInfoVO) throws Exception;
	
	// 카드 결제정보 저장
	public int insertPaymentCard(PaymentCardVO paymentCardVO) throws Exception;
	
	// 아이템 리스트 저장
	public int insertPaymentItem(PaymentItemListVO itemListVO) throws Exception;
	
	// 상품 갯수만큼 스탬프 넣기
	public int insertStamp(String userName) throws Exception;
	
	// 이벤트 쿠폰 발급하기
	public int insertEventCoupon(Coupon_MemberVO coupon_MemberVO) throws Exception;
	
	// 결제 후 장바구니에서 삭제
	public int deletePaymentAfter(CartVO cartVO) throws Exception;
	
	// 스탬프 초기화 시키기
	public int deleteAllStamp(String userName) throws Exception;
}

