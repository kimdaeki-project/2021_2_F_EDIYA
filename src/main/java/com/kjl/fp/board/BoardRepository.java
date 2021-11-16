package com.kjl.fp.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardRepository {
	
	// 게시글 리스트 가져오기
	public List<BoardVO> getList(BoardVO boardVO) throws Exception;
	
}
