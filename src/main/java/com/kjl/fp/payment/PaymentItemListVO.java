package com.kjl.fp.payment;

import lombok.Data;

@Data

// 결제 완료된 아이템들 모아놓는 테이블 VO
public class PaymentItemListVO {
	
	private Integer list_id;
	private Integer payment_id;
	private Integer pdNum;
	private String pdName;
	private Integer pdPrice;
	private Integer pdCnt;
	
}
