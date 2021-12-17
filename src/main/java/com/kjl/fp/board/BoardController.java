package com.kjl.fp.board;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kjl.fp.board.util.BoardNullCheck;
import com.kjl.fp.board.util.BoardPager;

@Controller
@RequestMapping("/board/**")
public class BoardController {

	@Autowired
	private BoardService boardService;

	// board =============================================== //

	// 카테고리별로 boardList 가져오기
	@GetMapping(value = {"notice","event","campaign"})
	public ModelAndView goEvent(BoardCtgVO boardCtgVO, HttpServletRequest request) throws Exception {

		// URL 가져오기
		String request_url = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);

		BoardCtgVO boardList = boardService.getBoardList(boardCtgVO);
		List<BoardVO> list = new ArrayList<BoardVO>();

		// Null체크
		if(BoardNullCheck.isEmpty(boardList)) {
			list = null;
		}else {
			list = boardList.getBoardList();
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("boardList", list);

		// URL 분기처리
		if(request_url.equals("/board/notice")) {
			
			mv.setViewName("board/ediya_news/notice");
			
		} else if (request_url.equals("/board/event")) {
			
			mv.setViewName("board/ediya_news/event");
			
		} else if (request_url.equals("/board/campaign")) {
			
			mv.setViewName("board/campaign/campaign");
		}
		// else ......... 추가되는 게시판있으면 더 추가할수 있음

		return mv;
	}

	// 게시글 하나 가져오기
	@GetMapping("getSelectOne")
	public ModelAndView getSelectOne(BoardVO boardVO, String board_type) throws Exception{
		
		BoardVO getOne = new BoardVO();
		getOne = boardService.getSelectOne(boardVO);
		
		// board_type을 이용해 해당 board_ctg 가져오기
		String board_ctg = boardService.getBoardCtg(board_type);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("board_type", board_type);
		mv.addObject("post", getOne);
		
		// view형식이 달라서 분기나눔
		if(board_ctg.equals("news")) {
			
			mv.setViewName("board/common/news_view");
			
		} else if(board_ctg.equals("campaign")) {
			
			mv.setViewName("board/common/campaign_view");
			
		}
		// else ..... 추가

		return mv;
	}
	
	
	// ===================================================== //
	
	
	// 따로 Parameter값이 없는 페이지들
	@GetMapping(value = {"ediya_findplace","ediya_members_main","ediya_members_card"})
	public String goFindPlace(HttpServletRequest request) throws Exception{
		
		// URL 가져오기
		String request_url = (String)request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		
		if(request_url.equals("/board/ediya_findplace")) {
			return "board/ediya_findplace";
		}
		else if(request_url.equals("/board/ediya_members_main")) {
			return "board/ediya_members/ediya_members_main";
		}
		else if(request_url.equals("/board/ediya_members_card")) {
			return "board/ediya_members/ediya_members_card";
		}
		// else..... 추가
		
		return "";
	}

}
