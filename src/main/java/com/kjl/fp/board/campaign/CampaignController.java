package com.kjl.fp.board.campaign;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kjl.fp.board.BoardVO;

@Controller
@RequestMapping("/board/**")
public class CampaignController {
	
	@Autowired
	private CampaignService campaignService;
	
	@GetMapping("campaign")
	public ModelAndView getCampaign(BoardVO boardVO) throws Exception{
		
//		List<BoardVO> ar = campaignService.getList(boardVO);
//		
		ModelAndView mv = new ModelAndView();
//		mv.addObject("campaign_list", ar);
		mv.setViewName("board/notice/campaign");
		
		return mv;
	}
	
}
