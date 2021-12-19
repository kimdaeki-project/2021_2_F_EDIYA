package com.kjl.fp.cart;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.kjl.fp.member.CouponVO;
import com.kjl.fp.member.Coupon_MemberVO;
import com.kjl.fp.member.MemberVO;

@Mapper
public interface CartMapper {
	
	
	// CartList 가져오기
	public List<CartVO> getCartList(String userName) throws Exception;
	
	// CartSelectList 가져오기
	public CartVO getSelectList(CartVO cartVO) throws Exception;
	
	// Delete One
	public int deleteOne(CartVO cartVO) throws Exception;
	
	// Update Count
	public int updateCount(CartVO cartVO) throws Exception;
	
	// Coupon 불러오기
	public List<CouponVO> getCouponList(String userName) throws Exception;
	
	// Coupon id에 해당하는 값 불러오기
	public CouponVO getCoupon(CouponVO couponVO) throws Exception;
	
	// 사용한 쿠폰 사용상태 변경
	public int deleteUsing(CouponVO couponVO) throws Exception;
}
