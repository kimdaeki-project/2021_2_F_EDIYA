package com.kjl.fp.payment;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class PaymentInfoVO {
	
	private Integer payment_id;
	private String payment_type;
	private String userName;
	private Date payment_date;
	private Integer payment_price;
	
	// 구입한 아이템목록
	private List<Integer> item_list;
}
