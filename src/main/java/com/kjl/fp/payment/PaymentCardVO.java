package com.kjl.fp.payment;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class PaymentCardVO {
	
	private String payment_type;
	private String card_kind;
	private String card_number;
	@DateTimeFormat(pattern = "yyyy-MM")
	private Date card_date;
	private String card_cvc;
	private List<Integer> item_list;
}
