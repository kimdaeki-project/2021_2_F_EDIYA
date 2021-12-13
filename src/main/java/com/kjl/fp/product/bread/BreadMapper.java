package com.kjl.fp.product.bread;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kjl.fp.cart.CartVO;
import com.kjl.fp.product.Pager;
import com.kjl.fp.product.productMapper;

@Mapper
public interface BreadMapper extends productMapper {

	//리스트 불러오기
	public List<BreadVO> selectAll () throws Exception;
	
	public List<StarBreadVO> starbread () throws Exception;
	
	public int pdcarts (CartVO cartVO) throws Exception;
	public int selectSeq (CartVO cartVO) throws Exception;	
	
}
