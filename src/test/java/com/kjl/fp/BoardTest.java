package com.kjl.fp;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.kjl.fp.board.BoardMapper;
import com.kjl.fp.board.BoardService;
import com.kjl.fp.board.BoardVO;

@SpringBootTest
class BoardTest {
	
	@Autowired
	private BoardMapper boardMapper;
	
	
	// (1번: notice, 2번: event, 3번: social_mate, 4번: social_campus, 5번: social_sanitation, 6번: social_accompany, 7번: social_etc, .... 추가)
	//@Test
	void test() throws Exception{
		
		for(int i=0; i<10; i++) {
			BoardVO boardVO = new BoardVO();
			boardVO.setBoard_ctg_id(1);
			boardVO.setBoard_title("test" + i);
			boardVO.setBoard_writer("tester");
			boardVO.setBoard_content("test" + i + "내용입니다.");
			
			boardMapper.insertBoard(boardVO);
		}
		
		System.out.println("== Finish ==");
	}
	
	// 캠페인
	@Test
	void test2() throws Exception{
		
		for(int i=0; i<10; i++) {
			BoardVO boardVO = new BoardVO();
			boardVO.setBoard_ctg_id(3);
			boardVO.setBoard_title("test" + i);
			boardVO.setBoard_writer("tester");
			boardVO.setBoard_content("test" + i + "내용입니다.");
			
			boardMapper.insertBoard(boardVO);
		}
		
		System.out.println("== Finish ==");
	}

}
