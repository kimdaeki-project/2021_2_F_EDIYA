package com.kjl.fp.board;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface BoardService {
	
	// 게시글 리스트 가져오기
	public List<BoardVO> getList(BoardVO boardVO) throws Exception;
	
}
