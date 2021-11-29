package com.kjl.fp.member;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	
	@GetMapping("mypage")
	public String mypage() throws Exception{
		
		return "member/mypage";
	}
	
	
	
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
	public boolean joinCheck(MemberVO memberVO) throws Exception{
		boolean result = false;
		
		
		MemberVO memberVO1 = new MemberVO();
		memberVO1 = memberService.getUsername(memberVO);
		
		if(memberVO1 == null) {
			result = true;
		}
		
		return result;
		
		
	}
	
	
	@GetMapping("join")
	public String join() throws Exception{
		
		return "member/join";
	}
	
	@PostMapping("join")
	public String join(MemberVO memberVO) throws Exception{
		
		int result = memberService.setJoin(memberVO);
		
		
		
		return "redirect:../";
	}
	
	
	@GetMapping("update")
	public String update() throws Exception{
		
		return "member/update";
	}
	
	@GetMapping("admin")
	public String admin() throws Exception{
		return "member/adminpage";
	}
	
	
	
	

}
