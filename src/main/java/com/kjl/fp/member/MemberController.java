package com.kjl.fp.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@GetMapping("login")
	public String login() throws Exception {
		
		return "member/login";
	}
	
	
	@GetMapping("join")
	public String join() throws Exception{
		
		return "member/join";
	}
	

}
