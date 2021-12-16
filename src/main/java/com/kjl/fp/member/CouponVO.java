package com.kjl.fp.member;

import java.sql.Date;

import lombok.Data;

@Data
public class CouponVO {
	
	private Long couponNum;
	private String couponName;
	private Date validity;
	

}
