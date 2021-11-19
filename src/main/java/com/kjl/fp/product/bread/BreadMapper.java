package com.kjl.fp.product.bread;

import org.apache.ibatis.annotations.Mapper;

import com.kjl.fp.product.productMapper;

@Mapper
public interface BreadMapper extends productMapper {
	
	//상품리스트
	public BreadVO selectAll (BreadVO breadVO) throws Exception;
	
	//상품 불러오기
	public BreadVO selectOne (BreadVO breadVO) throws Exception;
	
	

}
