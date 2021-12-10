package com.kjl.fp.payment;

import java.util.Date;

import lombok.Data;

@Data
public class PaymentInfoVO {
	
	private Integer payment_id;
	private String payment_kind;
	private String userName;
	private Date payment_date;
	private Integer payment_price;
	
}
