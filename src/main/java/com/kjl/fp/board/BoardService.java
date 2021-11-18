package com.kjl.fp.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper boardMapper;
	
	// 게시글 검색 기능
	public List<BoardVO> getSearch(Map<String, Object> map) throws Exception{
		
		return boardMapper.getSearch(map);
	}
	
	// 게시글 리스트 가져오기
	public List<BoardVO> getList(BoardVO boardVO) throws Exception{
		
		return boardMapper.getList(boardVO);
	}
	
	// 게시글 하나 가져오기
	public BoardVO getSelectOne(BoardVO boardVO) throws Exception{
		
		return boardMapper.getSelectOne(boardVO);
	}
	
	// 게시글 Insert
	public int setInsert(BoardVO boardVO) throws Exception{
		
		return boardMapper.setInsert(boardVO);
	}
}
