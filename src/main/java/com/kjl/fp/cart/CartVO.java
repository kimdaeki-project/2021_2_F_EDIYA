package com.kjl.fp.cart;

import lombok.Data;

@Data
public class CartVO {
	
	private Integer cart_id;
	private String userName;
	private Integer pdNum;
	private String pdName;
	private Integer pdPrice;
	private Integer pdCnt;
	
	// img
	private String pdImg;
	
}
