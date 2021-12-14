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
	
}
