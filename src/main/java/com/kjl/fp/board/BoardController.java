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
	
	// 공지사항, 이벤트, 캠페인
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
	
	// notice, event 부분 뷰 형식
	@GetMapping("news_view")
	public ModelAndView goDetailView(BoardVO boardVO) throws Exception{
		
		BoardVO getBoardVO = boardService.getSelectOne(boardVO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("view", getBoardVO);
		mv.setViewName("board/common/news_view");
		
		return mv;
	}
	// campaign 부분 뷰 형식
	@GetMapping("campaign_view")
	public ModelAndView goCampaignView(BoardVO boardVO) throws Exception{
		
		BoardVO getBoardVO = boardService.getSelectOne(boardVO);

		ModelAndView mv = new ModelAndView();
		mv.addObject("view", getBoardVO);
		mv.setViewName("board/common/campaign_view");
		
		return mv;
	}
	
}
