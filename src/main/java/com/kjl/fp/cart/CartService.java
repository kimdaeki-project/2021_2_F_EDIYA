package com.kjl.fp.cart;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kjl.fp.member.MemberVO;

@Service
public class CartService {
	
	@Autowired 
	private CartMapper cartMapper;
	
	// Cart List
	public List<CartVO> getCartList(Principal principal) throws Exception{
		
		String userName = principal.getName();
		
		return cartMapper.getCartList(userName);
	}
	
	// CartSelectList 가져오기
	public Map<String, Object> getSelectList(List<Integer> selected, CartVO cartVO) throws Exception{
		
		// 선택 한 장바구니 물품 가져오기
		List<CartVO> selectList = new ArrayList<CartVO>();
		
		// 총합 가격
		int totalPrice = 0;
		
		for(Integer select:selected) {
			
			cartVO.setCart_id(select);
			CartVO one = cartMapper.getSelectList(cartVO);
			
			totalPrice = totalPrice + (one.getPdPrice() * one.getPdCnt());
			
			selectList.add(one);
		}
		
		// 쿠폰 테이블에서 퍼센트 값 가져오기 getCoupon
		// 일단 10%로 테스트
		int salePrice = (int)((double)totalPrice * ((double)10 / (double)100));
		
		// 최종 가격
		totalPrice = totalPrice - salePrice;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("selectList", selectList);
		map.put("totalPrice", totalPrice);
		
		return map;
	}
	
	// Delete One
	public int deleteOne(CartVO cartVO) throws Exception{
		
		return cartMapper.deleteOne(cartVO);
	}
	
	// Update Count
	public int updateCount(CartVO cartVO) throws Exception{
		
		return cartMapper.updateCount(cartVO);
	}
	
}
