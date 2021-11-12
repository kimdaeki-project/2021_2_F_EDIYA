package com.kjl.fp.product;

import lombok.Data;

@Data
public class productVO {
	
	//파일 정보
	private ProFileVO proFileVO;
	//메뉴 종류
	private menuVO menuVO;
	
	//상품 번호
	private int proNum;
	//상품 이름
	private String proName;
	//상품 가격
	private String proPrice;

}
