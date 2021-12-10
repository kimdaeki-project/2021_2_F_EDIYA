package com.kjl.fp.payment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kjl.fp.cart.CartService;

@Controller
@RequestMapping("/payment/**")
public class PaymentController {
	
	@PostMapping("paymentCard")
	public void paymentCard(PaymentCardVO paymentCardVO) throws Exception{
		
		
	}
}
