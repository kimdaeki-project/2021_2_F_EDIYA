package com.kjl.fp.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.kjl.fp.member.MemberVO;

@Controller("/api/**")
public class EmailController {
	
	@Autowired
	private EmailService emailService;
	
	
	@PostMapping("emailCheck")
	public void emailCheck(MemberVO memberVO) throws Exception{
		
		emailService.mailSend(memberVO);
		
	}

}
