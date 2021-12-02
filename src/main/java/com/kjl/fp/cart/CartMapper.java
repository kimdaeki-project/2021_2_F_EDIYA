package com.kjl.fp.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartMapper {
	
	
	// CartList 가져오기
	public List<CartVO> getCartList() throws Exception;
	
	// Update Count
	public int updateCount(CartVO cartVO) throws Exception;
	
}
