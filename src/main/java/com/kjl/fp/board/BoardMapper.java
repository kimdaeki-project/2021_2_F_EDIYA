package com.kjl.fp.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
	
	// 게시글 리스트 가져오기
	public List<BoardVO> getList(BoardVO boardVO) throws Exception;
	
	// 게시글 하나 가져오기
	public BoardVO getSelectOne(BoardVO boardVO) throws Exception;
	
	// 게시글 Insert
	public int setInsert(BoardVO boardVO) throws Exception;
	
}
