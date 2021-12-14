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
	
	// 기타 페이지 쿠폰, 소개 등등
	@GetMapping("ediya_findplace")
	public String goFindPlace() throws Exception{
		
		return "board/ediya_findplace";
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
