package com.kjl.fp.member;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class CouponVO {
	
	private Long couponNum;
	private String couponName;
	private Date validity;
	private Integer couponPercent;
	
	private List<Coupon_MemberVO> coupon_MemberVO;
}
