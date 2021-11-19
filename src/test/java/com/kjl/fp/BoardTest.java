package com.kjl.fp;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.kjl.fp.board.BoardService;

@SpringBootTest
class BoardTest {
	
	@Autowired
	private BoardService boardService;
	
	@Test
	void test() {
		fail("Not yet implemented");
	}

}
