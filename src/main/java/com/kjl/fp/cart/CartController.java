package com.kjl.fp.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.util.JSONPObject;

@Controller
@RequestMapping("/cart/**")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	// 11/24
	// cartList
	@GetMapping("cartList")
	public ModelAndView goCartList() throws Exception{
		
		List<CartVO> cartList = cartService.getCartList();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("cartList", cartList);
		mv.setViewName("cart/cartList");
		
		return mv;
	}
	
	
	// updateCount
	@GetMapping("updateCount")
	public String updateCount(CartVO cartVO, Model model) throws Exception{
		
		cartService.updateCount(cartVO);
		
		List<CartVO> cartList = cartService.getCartList();
		model.addAttribute("cartList", cartList);
		
		return "cart/cartList";
	}

}
