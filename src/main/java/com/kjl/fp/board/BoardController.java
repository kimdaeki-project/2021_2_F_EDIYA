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
	
	// in_serach 공지사항, 이벤트 내부 검색
	@GetMapping("in_search")
	public ModelAndView goSearch(
			@RequestParam(value = "searchValue", required = false) String searchValue,
			@RequestParam(value = "kind", required = false) String kind,
			@RequestParam(value = "board_category", required = false) String board_category) throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		// searchValue
		if(searchValue.equals(null)) {
			map.put("searchValue", " ");
		}else {
			map.put("searchValue", searchValue);
		}
		// kind
		map.put("kind", kind);
		// board_category
		map.put("board_category", board_category);
		
		List<BoardVO> searchAr = boardService.getSearch(map);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject(board_category + "Ar", searchAr);
		mv.setViewName("board/ediya_news/" + board_category);
		
		return mv;
	}
	
	// 공지사항, 이벤트, 캠페인
	@GetMapping("notice")
	public ModelAndView goNotice(BoardVO boardVO, BoardPager boardPager) throws Exception{
		
		List<BoardVO> noticeAr = boardService.getList(boardVO, boardPager);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("noticeAr", noticeAr);
		mv.addObject("pager", boardPager);
		mv.setViewName("board/ediya_news/notice");
		
		return mv;
	}
	
	@GetMapping("event")
	public ModelAndView goEvent(BoardVO boardVO, BoardPager boardPager) throws Exception{
		
		List<BoardVO> eventAr = boardService.getList(boardVO, boardPager);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("eventAr", eventAr);
		mv.addObject("pager", boardPager);
		mv.setViewName("board/ediya_news/event");
		
		return mv;
	}
	
	@GetMapping("campaign")
	public String goCamp(BoardVO boardVO) throws Exception{
		
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
	
	
	
	// 기타 페이지 쿠폰, 소개 등등
	@GetMapping("ediya_giftcard_main")
	public String goGiftcardMain() throws Exception{
		
		return "board/ediya_giftcard/ediya_giftcard_main";
	}
	@GetMapping("ediya_members_faq")
	public String goFaq() throws Exception{
		
		return "board/ediya_members/ediya_members_faq";
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
