package com.kjl.fp.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board/**")
public class BoardController {
	
	@GetMapping("news")
	public String getList() throws Exception{
		
		return "board/notice/news";
		
	}
	
	@GetMapping("event")
	public String getEvent() throws Exception{
		
		return "board/notice/event";
	}
	
	@GetMapping("selectList")
	public String getSelectList() throws Exception{
		
		return "board/notice/selectList";
	}

}
