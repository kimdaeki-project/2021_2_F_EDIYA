package com.kjl.fp.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper boardMapper;
	
	// 게시글 리스트 가져오기
	public List<BoardVO> getList(BoardVO boardVO) throws Exception{
		
		return boardMapper.getList(boardVO);
	}
		
}
