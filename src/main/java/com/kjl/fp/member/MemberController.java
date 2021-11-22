package com.kjl.fp.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


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
	
	@PostMapping("joinCheck")
	@ResponseBody
	public boolean joinCheck(String userName) throws Exception{
		boolean result = false;
		
		MemberVO memberVO = new MemberVO();
		memberVO = memberService.getUsername(userName);
		
		if(memberVO == null) {
			result = true;
		}
		
		return result;
		
		
	}
	
	
	@GetMapping("join")
	public String join(@ModelAttribute MemberVO memberVO) throws Exception{
		
		return "member/join";
	}
	

}
