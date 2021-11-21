package com.kjl.fp.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	@GetMapping("login")
	public String login() throws Exception {
		
		return "member/login";
	}
	
	
	@GetMapping("joinCheck")
	public String joinCheck() throws Exception{
		
		return "member/joinCheck";
	}
	
	
	@GetMapping("join")
	public String join(@ModelAttribute MemberVO memberVO) throws Exception{
		
		return "member/join";
	}
	

}
