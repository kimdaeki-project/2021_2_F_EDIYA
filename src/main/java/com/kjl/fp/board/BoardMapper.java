package com.kjl.fp.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.kjl.fp.board.util.BoardPager;

@Mapper
public interface BoardMapper {
	
	// 카테고리 별 게시판 리스트 불러오기
	public BoardCtgVO getBoardList(Map<String, Object> map) throws Exception;
	
	// board_type의 board_ctg 찾아오기
	public String getBoardCtg(String board_type) throws Exception;
	
	// board_type의 board_ctg_id, board_ctg 찾아오기
	public BoardCtgVO getBoardCtgId(String board_type) throws Exception;
	
	// 하나의 게시글 불러오기
	public BoardVO getSelectOne(BoardVO boardVO) throws Exception;
	
	// 게시글 totalCount
	public Long getTotalCount(Map<String, Object> map) throws Exception;
	
	// 게시글 Insert
	public int insertBoard(BoardVO boardVO) throws Exception;
}
