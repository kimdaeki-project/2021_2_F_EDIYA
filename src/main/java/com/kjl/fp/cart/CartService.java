package com.kjl.fp.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {
	
	@Autowired 
	private CartMapper cartMapper;
	
	// Cart List
	public List<CartVO> getCartList() throws Exception{
		
		return cartMapper.getCartList();
	}
	
	// Update Count
	public int updateCount(CartVO cartVO) throws Exception{
		
		return cartMapper.updateCount(cartVO);
	}
	
}
