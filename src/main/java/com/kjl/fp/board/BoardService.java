package com.kjl.fp.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kjl.fp.board.util.BoardPager;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper boardMapper;
	
	// 카테고리 별 게시판 리스트 불러오기
	public BoardCtgVO getBoardList(BoardCtgVO boardCtgVO) throws Exception{
		
		return boardMapper.getBoardList(boardCtgVO);
	}
	
	// board_type의 board_ctg 찾아오기
	public String getBoardCtg(String board_type) throws Exception{
		
		return boardMapper.getBoardCtg(board_type);
	}
	
	// 하나의 게시글 불러오기
	public BoardVO getSelectOne(BoardVO boardVO) throws Exception{

		return boardMapper.getSelectOne(boardVO);
	}
}
