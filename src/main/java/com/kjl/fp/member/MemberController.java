package com.kjl.fp.member;




import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;


@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	
	
	@PostMapping("pwReset")
	public ModelAndView pwReset(String email, String email_etc) throws Exception{
		
		ModelAndView modelAndView = new ModelAndView();
		MemberVO memberVO = new MemberVO();
		
		String userName = email + "@" + email_etc;
		
		System.out.println("넣기전: "+userName);
		
		memberVO.setUserName(userName);
		
		System.out.println(memberVO.getUserName());
		
		int result = memberService.setPassword(memberVO);

		modelAndView.addObject("msg", "이메일로 임시 비밀번호 발송완료!");
		modelAndView.addObject("url", "./login");
		modelAndView.setViewName("common/result");
		
		
		return modelAndView;
		
	}
	
	
	@PostMapping("pwCheck")
	@ResponseBody
	public String pwCheck(MemberVO memberVO) throws Exception{
		System.out.println(memberService.pwCheck(memberVO).getNumber());
		return memberService.pwCheck(memberVO).getNumber();
	}
	
	
	
	
	@PostMapping("pwFind")
	@ResponseBody
	public String pwFind(MemberVO memberVO) throws Exception{
		
			
		
		return memberService.findPW(memberVO);
	}
	
	
	@PostMapping("findId")
	@ResponseBody
	public String findId(MemberVO memberVO) throws Exception{
		
		 String userName = memberService.findId(memberVO);
		 
			if(userName.isEmpty()) {
				return "0";
			}else {
				return userName;
			}
			
			
		
		
	}
	
	
	
	@GetMapping("mypage")
	public ModelAndView mypage(Principal principal, ModelAndView modelAndView) throws Exception{
		
		
		  MemberVO memberVO = new MemberVO();
		  MemberVO memberVO2 = new MemberVO();
		  memberVO.setUserName(principal.getName());
		  memberVO =  memberService.getCoupon(memberVO);
		  memberVO2 = memberService.getUsedCoupons(memberVO);
		  
		  
		  Long couponCount = memberService.getCouponCount(memberVO);
		  Long stampCount = memberService.getCountStamp(memberVO);
		  Long unStamp = 12L - stampCount;
		  
		  
		modelAndView.addObject("stamp", stampCount);
		modelAndView.addObject("unStamp", unStamp);
		modelAndView.addObject("coupons", memberVO);
		modelAndView.addObject("Usecoupons", memberVO2);
		modelAndView.addObject("couponCount", couponCount);
		modelAndView.setViewName("member/mypage");
		
		return modelAndView;
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
