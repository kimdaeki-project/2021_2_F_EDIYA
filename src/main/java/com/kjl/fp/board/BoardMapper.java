package com.kjl.fp.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
	
	// 카테고리 별 게시판 리스트 불러오기
	public List<BoardVO> getBoardList(BoardVO boardVO) throws Exception;
	
	// 하나의 게시글 불러오기
	public BoardVO getSelectOne(BoardVO boardVO) throws Exception;
}
