package com.kjl.fp.board;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class BoardVO {
	
	private Integer board_id;
	private Integer board_ctg_id;
	private String board_title;
	private String board_writer;
	private String board_content;
	private Date board_regdate;
	private Integer board_hit;
	
	//Only Event
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date board_start_date;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date board_end_date;
	
	// rownum
	private Integer no;
	
	private BoardFilesVO boardFilesVO;
	
}
