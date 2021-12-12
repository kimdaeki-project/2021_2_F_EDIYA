package com.kjl.fp.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.kjl.fp.member.MemberVO;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class EmailService {
	
	
	private final JavaMailSender javaMailSender;
	
	public void mailSend(MemberVO memberVO) throws Exception {
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setTo(memberVO.getUsername());
		simpleMailMessage.setSubject("Test");
		simpleMailMessage.setText("Test send Message");
		
		javaMailSender.send(simpleMailMessage);
		
	}

}
