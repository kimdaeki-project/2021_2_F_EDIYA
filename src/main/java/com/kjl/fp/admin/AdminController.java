package com.kjl.fp.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.kjl.fp.board.BoardCtgVO;
import com.kjl.fp.board.BoardService;
import com.kjl.fp.board.BoardVO;
import com.kjl.fp.member.MemberVO;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("adminpage")
	public ModelAndView admin(ModelAndView modelAndView) throws Exception{
		
		
		List<MemberVO> ar = new ArrayList<MemberVO>();
		
		ar = adminService.getUsers();
		
		modelAndView.addObject("memberList",ar);
		modelAndView.setViewName("admin/adminpage");
		
		return modelAndView;
	}
	
	@GetMapping("menuAdmin")
	public String menuAdmin() throws Exception{
		return "admin/menuAdmin";
	}
	
	
	// board_admin ========================================= //
	
	// board_category 가져오기
	@GetMapping("boardAdmin")
	public ModelAndView getBoardCtg() throws Exception{
		
		List<BoardCtgVO> board_ctg_list = adminService.getBoardCtg();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("ctg_list", board_ctg_list);
		mv.setViewName("admin/boardAdmin");
		
		return mv;
	}
	
	@GetMapping("getSelectCtgList")
	@ResponseBody
	public ModelAndView getSelectCtgList(BoardCtgVO boardCtgVO) throws Exception{
		
		List<BoardVO> select_ctg_list = adminService.getSelectCtgList(boardCtgVO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("select_ctg_list", select_ctg_list);
		mv.setViewName("admin/boardList");
		
		return mv;
	}
	
	// boardInsertPage 이동
	@GetMapping("boardInsert")
	public ModelAndView goBoardInsert() throws Exception{
		
		// ctg
		List<BoardCtgVO> board_ctg_list = adminService.getBoardCtg();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("ctg_list", board_ctg_list);
		mv.setViewName("admin/boardInsert");
		
		return mv;
	}
	
	// 게시글 추가하기
	@PostMapping("insertPost")
	public ModelAndView insertPost(BoardVO boardVO, @RequestParam("board_file") MultipartFile file) throws Exception{
		
		int result = adminService.insertPost(boardVO, file);
		
		List<BoardCtgVO> board_ctg_list = adminService.getBoardCtg();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("ctg_list", board_ctg_list);
		mv.setViewName("admin/boardAdmin");
		
		return mv;
	}
	
	// ===================================================== //
	

}
