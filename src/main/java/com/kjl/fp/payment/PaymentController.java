package com.kjl.fp.payment;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/payment/**")
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	@PostMapping("paymentCard")
	public String paymentCard(PaymentInfoVO paymentInfoVO ,PaymentCardVO paymentCardVO, Principal principal) throws Exception{
		
		// 결제 정보 insert
		paymentService.insertPaymentInfo(paymentInfoVO, paymentCardVO, principal);
		
		// 완료된 결제정보 가져오기
		
		
		return "cart/payment_success";
	}
}
