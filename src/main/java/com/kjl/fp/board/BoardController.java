package com.kjl.fp.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kjl.fp.board.util.BoardPager;

@Controller
@RequestMapping("/board/**")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	
	// board =============================================== //
	
	// 이벤트
	@GetMapping("event")
	public ModelAndView goEvent(BoardVO boardVO) throws Exception{
		
		List<BoardVO> list = boardService.getBoardList(boardVO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("eventList", list);
		mv.setViewName("board/ediya_news/event");
		
		return mv;
	}
	
	// 공지사항
	@GetMapping("notice")
	public ModelAndView goNotice(BoardVO boardVO) throws Exception{
		
		List<BoardVO> list = boardService.getBoardList(boardVO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("noticeList", list);
		mv.setViewName("board/ediya_news/notice");
		
		return mv;
	}
	
	// 캠페인
	@GetMapping("campaign")
	public ModelAndView goCampaign(BoardVO boardVO) throws Exception{
		
		List<BoardVO> list = boardService.getBoardList(boardVO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("board_type", boardVO.getBoard_type());
		mv.addObject("campaignList", list);
		mv.setViewName("board/campaign/campaign");
		
		return mv;
	}
	
	// FaQ
	@GetMapping("ediya_members_faq")
	public String goFaq() throws Exception{
		
		return "board/ediya_members/ediya_members_faq";
	}
	
	// 게시글 하나 가져오기
	@GetMapping("getSelectOne")
	public ModelAndView getSelectOne(BoardVO boardVO) throws Exception{
		
		BoardVO getOne = new BoardVO();
		getOne = boardService.getSelectOne(boardVO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("post", getOne);
		
		// board_type
		String board_type = getOne.getBoard_type();
			
		if(board_type.equals("notice") || board_type.equals("event")) {
			
			mv.setViewName("board/common/news_view");
		}else if(board_type.contains("social")) {
			
			mv.setViewName("board/common/campaign_view");
		}else /* FaQ */{
			
		}
		
		return mv;
	}
	// ===================================================== //
	
	
	// 기타 페이지 쿠폰, 소개 등등
	@GetMapping("ediya_findplace")
	public String goFindPlace() throws Exception{
		
		return "board/ediya_findplace";
	}
	@GetMapping("coupon")
	public String goCoupon() throws Exception{
		
		return "board/ediya_news/coupon";
	}
	@GetMapping("ediya_members_main")
	public String goMembersMain() throws Exception{
		
		return "board/ediya_members/ediya_members_main";
	}
	@GetMapping("ediya_members_card")
	public String goMembersCard() throws Exception{
		
		return "board/ediya_members/ediya_members_card";
	}
}
