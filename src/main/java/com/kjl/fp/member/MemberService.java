package com.kjl.fp.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberService implements UserDetailsService {
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private PasswordEncoder bCryptPasswordEncoder;
	
	
	 public MemberVO getUsername(MemberVO memberVO) throws Exception{ 
		
		 return memberMapper.getUsername(memberVO);
	 }
	 
	 
	 public int setJoin(MemberVO memberVO) throws Exception{
		 
		
		memberVO.setPassword(bCryptPasswordEncoder.encode(memberVO.getPassword()));
		 
		 int result = memberMapper.setJoin(memberVO);
		 result = memberMapper.setRoleMember(memberVO);
		 
		 return result;
	 }
	
	

	
	  @Override 
	  public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException { 
		  MemberVO memberVO1 =null;
		  
		  try {
			memberVO1 = memberMapper.getSelectOne(userName);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  return memberVO1;
		  
		  }
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  }
	 
	
	
	
	
	


