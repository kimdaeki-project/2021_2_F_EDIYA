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
		
		//modelAndView 사용하기 쿠폰 count 갯수 뿌려주기
		
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
	
	
	@PostMapping("delete")
	public String delete(MemberVO memberVO) throws Exception{
		
		
		int result = memberService.setDeleteUser(memberVO);
		
		if(result == 0) {
			System.out.println("오류발생");
			return "memeber/update";
		}else {
			return "redirect:./logout";
		}
		
		
	}
	
	
	@GetMapping("update")
	public String update() throws Exception{
		
		return "member/update";
	}
	
	@PostMapping("update")
	public String update(MemberVO memberVO)throws Exception{
		
		memberService.setUpdateNickName(memberVO);
		
		return "redirect:./logout";
	}
	
	
	
	@PostMapping("passwordCheck")
	@ResponseBody
	public boolean passwordCheck(MemberVO memberVO) throws Exception{
		
		 return memberService.passwordCheck(memberVO);
		
		
	}
	
	@PostMapping("passwordUpdate")
	public String setUpdatePassword(MemberVO memberVO) throws Exception{
		
		memberService.setUpdatePassword(memberVO);
		
		return "redirect:./logout";
	}
	
	
	
	
	

}
