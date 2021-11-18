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
	
	// 게시글 검색 기능
	public List<BoardVO> getSearch(Map<String, Object> map) throws Exception{
		
		return boardMapper.getSearch(map);
	}
	
	// 게시글 리스트 가져오기
	public List<BoardVO> getList(BoardVO boardVO, BoardPager boardPager) throws Exception{
		
		boardPager.makeRow();
		Long totalCount = boardMapper.getTotalCount(boardVO);
		boardPager.makeNum(totalCount);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("board_category", boardVO.getBoard_category());
		map.put("pager", boardPager);
		
		
		return boardMapper.getList(map);
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
