package com.kjl.fp.board;

import java.util.List;

import lombok.Data;

@Data
public class BoardCtgVO {
	
	private Integer board_ctg_id;
	private String board_ctg;
	private String board_type;
	private String board_type_k;
	
	private List<BoardVO> boardList;
}
