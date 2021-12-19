package com.kjl.fp.payment;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kjl.fp.cart.CartMapper;
import com.kjl.fp.cart.CartVO;
import com.kjl.fp.member.CouponVO;
import com.kjl.fp.member.Coupon_MemberVO;

@Service
public class PaymentService {
	
	@Autowired
	private PaymentMapper paymentMapper;
	
	@Autowired
	private CartMapper cartMapper;
	
	// 결제 후 결제정보 가져오기
	public PaymentInfoVO selectPaymentOne(PaymentInfoVO paymentInfoVO) throws Exception{
		
		return paymentMapper.selectPaymentOne(paymentInfoVO);
	}
	
	// 결제 정보 통합 관리
	public int insertPaymentInfo(PaymentInfoVO paymentInfoVO, PaymentCardVO paymentCardVO, CouponVO couponVO, Principal principal) throws Exception{
		
		int totalPrice = 0;
		
		for(Integer cart_id : paymentInfoVO.getItem_list()) {
			
			CartVO cartVO = new CartVO();
			cartVO.setCart_id(cart_id);
			
			CartVO getVO = cartMapper.getSelectList(cartVO);
			
			totalPrice = totalPrice + (getVO.getPdPrice() * getVO.getPdCnt());
			
		}
		
		// 쿠폰 테이블에서 퍼센트 값 가져오기 getCoupon
		CouponVO getCoupon = cartMapper.getCoupon(couponVO);
		int salePrice = 0;
		// 일단 10%로 테스트
		if(getCoupon != null) {
		 salePrice = (int)((double)totalPrice * ((double)getCoupon.getCouponPercent() / (double)100));
		}
		
		// 최종 가격
		totalPrice = totalPrice - salePrice;
		
		// payment TYPE
		String payment_type = paymentInfoVO.getPayment_type();

		paymentInfoVO.setPayment_price(totalPrice);
		paymentInfoVO.setUserName(principal.getName());
		
		int payInfo_result = paymentMapper.insertPaymentInfo(paymentInfoVO);
		
		
		// payment_info 정보 들어간 이후에 각 결제방식 테이블에 정보저장 + 아이템 리스트
		// key-property 값 가져오기
		if(payInfo_result > 0) {
				
			int payment_id = paymentInfoVO.getPayment_id();
			
			if(payment_type.equals("card")) {
			
				// 카드결제정보 insert
				paymentCardVO.setPayment_id(payment_id);
				paymentMapper.insertPaymentCard(paymentCardVO);
				
				// 아이템 리스트 insert
				for(Integer cart_id : paymentInfoVO.getItem_list()) {
					
					CartVO cartVO = new CartVO();
					cartVO.setCart_id(cart_id);
					
					CartVO getVO = cartMapper.getSelectList(cartVO);
					
					PaymentItemListVO itemListVO = new PaymentItemListVO();
					itemListVO.setPayment_id(payment_id);
					itemListVO.setPdNum(getVO.getPdNum());
					itemListVO.setPdName(getVO.getPdName());
					itemListVO.setPdPrice(getVO.getPdPrice());
					itemListVO.setPdCnt(getVO.getPdCnt());
					
					paymentMapper.insertPaymentItem(itemListVO);
					
					// 장바구니에서는 삭제시키기
					payInfo_result = paymentMapper.deletePaymentAfter(cartVO);
					
					// 사용한 쿠폰 상태변경 0 미사용 1사용
					if(getCoupon != null) {
						cartMapper.deleteUsing(couponVO);
					}
					
					// 스탬프 갯수 가져오기
					int stamp_cnt = paymentMapper.selectStampCount(principal.getName());
					
					// 구입한 상품 갯수당 스탬프 하나넣어주기
					// 해당 결제번호의 아이템 리스트 가져오기
					List<PaymentItemListVO> item_list = paymentMapper.selectPaymentItem(paymentInfoVO);
					// 상품 갯수만큼 스탬프 넣기
					// item_count 상품 갯수
					int item_count = 0;
					for(int i=0; i<item_list.size(); i++) {
						item_count = item_count + item_list.get(i).getPdCnt();
					}
					
					// 현재 스탬프의 갯수
					int current_stamp = stamp_cnt + item_count;
					// 현재 갯수가 12개 이상이면 쿠폰 발급 및 갯수 초기화후 curret_stamp에서 12개를 뺀 값을 item_count에 넣어주기
					if(current_stamp >= 12) {
						// 스탬프 클리어 쿠폰
						Coupon_MemberVO cmVO = new Coupon_MemberVO();
						// 현재 이벤트 쿠폰 4번 R 아메리카노 한잔
						cmVO.setCouponNum(4);
						cmVO.setUserName(principal.getName());
						
						paymentMapper.insertEventCoupon(cmVO);
						
						// 쿠폰 발급 후 스탬프 갯수 초기화
						paymentMapper.deleteAllStamp(principal.getName());
						// curret_stamp에서 12개를 뺀 값을 item_count에 넣어주기
						current_stamp = current_stamp - 12;
						item_count = current_stamp;
					}
					
					for(int i=0; i<item_count; i++) {
						paymentMapper.insertStamp(principal.getName());
					}
					
				}
			
			}else if(payment_type.equals("kakaopay")) {
				
				// 카카오페이 아이템 리스트 insert
				for(Integer cart_id : paymentInfoVO.getItem_list()) {
					
					CartVO cartVO = new CartVO();
					cartVO.setCart_id(cart_id);
					
					CartVO getVO = cartMapper.getSelectList(cartVO);
					
					PaymentItemListVO itemListVO = new PaymentItemListVO();
					itemListVO.setPayment_id(payment_id);
					itemListVO.setPdNum(getVO.getPdNum());
					itemListVO.setPdName(getVO.getPdName());
					itemListVO.setPdPrice(getVO.getPdPrice());
					itemListVO.setPdCnt(getVO.getPdCnt());
					
					paymentMapper.insertPaymentItem(itemListVO);
					
					// 장바구니에서는 삭제시키기
					payInfo_result = paymentMapper.deletePaymentAfter(cartVO);
					// 사용한 쿠폰 상태변경 0 미사용 1사용
					if(getCoupon != null) {
						cartMapper.deleteUsing(couponVO);
					}
					
					// 스탬프 갯수 가져오기
					int stamp_cnt = paymentMapper.selectStampCount(principal.getName());
					
					// 구입한 상품 갯수당 스탬프 하나넣어주기
					// 해당 결제번호의 아이템 리스트 가져오기
					List<PaymentItemListVO> item_list = paymentMapper.selectPaymentItem(paymentInfoVO);
					// 상품 갯수만큼 스탬프 넣기
					// item_count 상품 갯수
					int item_count = 0;
					for(int i=0; i<item_list.size(); i++) {
						item_count = item_count + item_list.get(i).getPdCnt();
					}
					
					// 현재 스탬프의 갯수
					int current_stamp = stamp_cnt + item_count;
					// 현재 갯수가 12개 이상이면 쿠폰 발급 및 갯수 초기화후 curret_stamp에서 12개를 뺀 값을 item_count에 넣어주기
					if(current_stamp >= 12) {
						// 스탬프 클리어 쿠폰
						Coupon_MemberVO cmVO = new Coupon_MemberVO();
						// 현재 이벤트 쿠폰 4번 R 아메리카노 한잔
						cmVO.setCouponNum(4);
						cmVO.setUserName(principal.getName());
						
						paymentMapper.insertEventCoupon(cmVO);
						
						// 쿠폰 발급 후 스탬프 갯수 초기화
						paymentMapper.deleteAllStamp(principal.getName());
						// curret_stamp에서 12개를 뺀 값을 item_count에 넣어주기
						current_stamp = current_stamp - 12;
						item_count = current_stamp;
					}
					
					for(int i=0; i<item_count; i++) {
						paymentMapper.insertStamp(principal.getName());
					}
				}
				
			}
			
		}else {
			System.out.println("error");
		}
		
		return payInfo_result;
	}
	
}
