package com.kjl.fp.board;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	
//	제목, 내용, 작성자, 등록날짜
	
	private Integer board_id;
	private Integer member_id;
	private String title;
	private String contents;
	private Date reg_date;
	private Integer hit;
	private Date start_date;
	private Date end_date;
	private String category_name;
	
}
