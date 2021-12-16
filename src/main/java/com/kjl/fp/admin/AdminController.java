package com.kjl.fp.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.kjl.fp.board.BoardService;
import com.kjl.fp.board.BoardVO;
import com.kjl.fp.member.MemberVO;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("adminpage")
	public ModelAndView admin(ModelAndView modelAndView) throws Exception{
		
		
		List<MemberVO> ar = new ArrayList<MemberVO>();
		
		ar = adminService.getUsers();
		
		modelAndView.addObject("memberList",ar);
		modelAndView.setViewName("admin/adminpage");
		
		return modelAndView;
	}
	
	@GetMapping("boardAdmin")
	public String boardAdmin() throws Exception{
		return "admin/boardAdmin";
	}
	
	@GetMapping("menuAdmin")
	public String menuAdmin() throws Exception{
		return "admin/menuAdmin";
	}
	
	
	// board_admin ========================================= //
	
	// board별 분류
	@GetMapping("getCategoryList")
	public ModelAndView getCategoryList(@RequestParam(value = "board_category", required = false, defaultValue = "faq") String board_category) throws Exception{
		
		List<String> board_type_list = adminService.getCategoryList(board_category);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("typeList", board_type_list);
		mv.setViewName("admin/boardAdmin");
		
		return mv;
	}
	
	// type별 리스트가져오기
	@GetMapping("getTypeList")
	public ModelAndView getTypeList(BoardVO boardVO) throws Exception{
		
		List<BoardVO> list = boardService.getBoardList(boardVO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("admin/boardList");
		
		return mv;
	}
	
	// boardInsert
	@GetMapping("viewBoardInsert")
	public String viewBoardInsert(BoardVO boardVO, Model model) throws Exception{
		
		model.addAttribute("board_type", boardVO.getBoard_type());
		
		return "admin/boardInsert";
	}
	// ===================================================== //
	

}
