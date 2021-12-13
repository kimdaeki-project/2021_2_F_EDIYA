package com.kjl.fp.payment;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kjl.fp.cart.CartMapper;
import com.kjl.fp.cart.CartVO;

@Service
public class PaymentService {
	
	@Autowired
	private PaymentMapper paymentMapper;
	
	@Autowired
	private CartMapper cartMapper;
	
	// 카드
	public int insertPaymentInfo(PaymentInfoVO paymentInfoVO, PaymentCardVO paymentCardVO, Principal principal) throws Exception{
		
		int totalPrice = 0;
		
		for(Integer cart_id : paymentInfoVO.getItem_list()) {
			
			CartVO cartVO = new CartVO();
			cartVO.setCart_id(cart_id);
			
			CartVO getVO = cartMapper.getSelectList(cartVO);
			
			totalPrice = totalPrice + (getVO.getPdPrice() * getVO.getPdCnt());
			
		}
		
		// 쿠폰 테이블에서 퍼센트 값 가져오기 getCoupon
		// 일단 10%로 테스트
		int salePrice = (int)((double)totalPrice * ((double)10 / (double)100));
		
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
					//payInfo_result = paymentMapper.deletePaymentAfter(cartVO);
				}
			
			}
			
		}else {
			System.out.println("error");
		}
		
		return payInfo_result;
	}
	
}
