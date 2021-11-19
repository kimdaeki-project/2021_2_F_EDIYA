package com.kjl.fp.product.bread;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kjl.fp.product.productMapper;

@Mapper
public interface BreadMapper extends  productMapper {

	//리스트 불러오기
	public List<BreadVO> breadSelectAll (BreadVO breadVO) throws Exception;
	
	//삼품 불러오기
	public BreadVO selectOne (BreadVO breadVO) throws Exception;
	
}
