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
	public BoardCtgVO getBoardList(BoardCtgVO boardCtgVO, BoardPager boardPager) throws Exception{
		
		String board_type = boardCtgVO.getBoard_type();
		
		// board_ctg_id, board_ctg 가져오기
		BoardCtgVO ctg_id = boardMapper.getBoardCtgId(board_type);
		int board_ctg_id = 0;
		String board_ctg = "";
		if(ctg_id != null) {
			board_ctg_id = ctg_id.getBoard_ctg_id();
			board_ctg = ctg_id.getBoard_ctg();
		}
		
		// 찾아올 게시판 종류 set
		boardCtgVO.setBoard_ctg_id(board_ctg_id);
		boardCtgVO.setBoard_ctg(board_ctg);
		boardCtgVO.setBoard_type(board_type);
		
		// board_ctg에 따른 페이지에 최대로보여주는 게시물 수
		// news: 이디야소식, campaign: 사회공헌
		if(board_ctg.equals("news")) {
			boardPager.setPerPage(10);
		}
		else if(board_ctg.equals("campaign")) {
			boardPager.setPerPage(6);
		}
		
		// totalCount Map
		HashMap<String, Object> map_count = new HashMap<String, Object>();
		map_count.put("boardCtgVO", boardCtgVO);
		map_count.put("boardPager", boardPager);
		
		// makeRow
		boardPager.makeRow();
		
		// board 테이블의 해당 board_ctg_id 갯수 가져오기
		Long totalCount = boardMapper.getTotalCount(map_count);
		boardPager.makeNum(totalCount);
		
		// List 가져오는 Mapping
		HashMap<String, Object> map_list = new HashMap<String, Object>();
		map_list.put("boardCtgVO", boardCtgVO);
		map_list.put("boardPager", boardPager);
		
		
		return boardMapper.getBoardList(map_list);
	}
	
	// board_type의 board_ctg 찾아오기
	public String getBoardCtg(String board_type) throws Exception{
		
		return boardMapper.getBoardCtg(board_type);
	}
	
	// 하나의 게시글 불러오기
	public BoardVO getSelectOne(BoardVO boardVO) throws Exception{

		return boardMapper.getSelectOne(boardVO);
	}
	
	// 이전 글, 다음글 불러오기
	public BoardVO getPrevId(BoardVO boardVO) throws Exception{
		
		return boardMapper.getPrevId(boardVO);
	}
	public BoardVO getNextId(BoardVO boardVO) throws Exception{
		
		return boardMapper.getNextId(boardVO);
	}
}
