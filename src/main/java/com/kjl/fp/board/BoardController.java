package com.kjl.fp.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board/**")
public class BoardController {
	
	@GetMapping("notice")
	public String goNotice() throws Exception{
		
		return "board/ediya_news/notice";
	}
	
	@GetMapping("event")
	public String goEvent() throws Exception{
		
		return "board/ediya_news/event";
	}
	
	@GetMapping("campaign")
	public String goCamp() throws Exception{
		
		return "board/campaign/campaign";
	}
	
	@GetMapping("news_view")
	public String goDetailView() throws Exception{
		
		return "board/common/news_view";
	}
	
}
