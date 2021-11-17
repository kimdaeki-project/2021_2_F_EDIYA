package com.kjl.fp.board;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private Integer board_id;
	private String board_category;
	private Integer member_id;
	private String board_title;
	private String board_contents;
	private Date regDate;
	private Date startDate;
	private Date endDate;
	
}
