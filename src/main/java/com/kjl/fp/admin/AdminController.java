package com.kjl.fp.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	@GetMapping("adminpage")
	public String admin() throws Exception{
		return "admin/adminpage";
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
