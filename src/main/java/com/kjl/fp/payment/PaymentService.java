package com.kjl.fp.payment;

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
	public int insertPaymentInfo(PaymentCardVO paymentCardVO) throws Exception{
		
		for(Integer cart_id : paymentCardVO.getItem_list()) {
			
			CartVO cartVO = new CartVO();
			cartVO.setCart_id(cart_id);
			
		}
		
		
		return 0;
	}
	
}
