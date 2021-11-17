package com.kjl.fp.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board/**")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("notice")
	public ModelAndView goNotice(BoardVO boardVO) throws Exception{
		
		List<BoardVO> noticeAr = boardService.getList(boardVO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("noticeAr", noticeAr);
		mv.setViewName("board/ediya_news/notice");
		
		return mv;
	}
	
	@GetMapping("event")
	public ModelAndView goEvent(BoardVO boardVO) throws Exception{
		
		List<BoardVO> eventAr = boardService.getList(boardVO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("eventAr", eventAr);
		mv.setViewName("board/ediya_news/event");
		
		return mv;
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
