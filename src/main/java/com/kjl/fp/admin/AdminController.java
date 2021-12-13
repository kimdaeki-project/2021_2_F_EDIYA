package com.kjl.fp.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	
	@GetMapping("boardAdmin")
	public String boardAdmin() throws Exception{
		return "admin/boardAdmin";
	}
	
	@GetMapping("menuAdmin")
	public String menuAdmin() throws Exception{
		return "admin/menuAdmin";
	}
	

}
