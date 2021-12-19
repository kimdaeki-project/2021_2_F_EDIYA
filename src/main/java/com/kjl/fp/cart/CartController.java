package com.kjl.fp.cart;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.kjl.fp.member.CouponVO;
import com.kjl.fp.member.Coupon_MemberVO;
import com.kjl.fp.member.MemberVO;

@Controller
@RequestMapping("/cart/**")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	// cartList
	@GetMapping("cartList")
	public ModelAndView goCartList(Principal principal) throws Exception{
		
		// 쿠폰
		List<CouponVO> couponList = cartService.getCouponList(principal);
		
		// 카트리스트
		List<CartVO> cartList = cartService.getCartList(principal);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("couponList", couponList);
		mv.addObject("cartList", cartList);
		mv.setViewName("cart/cartList");
		
		return mv;
	}
	
	// deleteOne
	@GetMapping("deleteOne")
	public String deleteOne(CartVO cartVO, Model model, Principal principal) throws Exception{
		
		cartService.deleteOne(cartVO);
		
		List<CartVO> cartList = cartService.getCartList(principal);
		model.addAttribute("cartList", cartList);
		
		return "cart/cartList";
	}
	
	// updateCount
	@GetMapping("updateCount")
	public String updateCount(CartVO cartVO, Model model, Principal principal) throws Exception{
		
		cartService.updateCount(cartVO);
		
		List<CartVO> cartList = cartService.getCartList(principal);
		model.addAttribute("cartList", cartList);
		
		return "cart/cartList";
	}
	
	//getSelectList
	@PostMapping("getSelectList")
	public ModelAndView getSelectList(@RequestParam(value = "selected[]") List<Integer> selected, CartVO cartVO, CouponVO couponVO) throws Exception{
		
		Map<String, Object> map = cartService.getSelectList(selected, cartVO, couponVO);
		
		@SuppressWarnings("unchecked")
		List<CartVO> selectList = (List<CartVO>)map.get("selectList");
		CouponVO coupon = (CouponVO) map.get("coupon");
		int totalPrice = (int)map.get("totalPrice");
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("selectCoupon", coupon);
		mv.addObject("selectList", selectList);
		mv.addObject("totalPrice", totalPrice);
		mv.setViewName("cart/payment");
		
		return mv;	
	}

}
