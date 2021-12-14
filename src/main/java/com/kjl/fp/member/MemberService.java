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
	
	
	public Long getCouponCount(MemberVO memberVO) throws Exception{
		return memberMapper.getCountCoupon(memberVO);
	}
	
	
	public MemberVO getCoupon(MemberVO memberVO) throws Exception{
		
		return memberMapper.getCoupon(memberVO);
	}
	
	public MemberVO getUsedCoupons(MemberVO memberVO) throws Exception{
		return memberMapper.getUsedCoupon(memberVO);
	}
	
	
	
	public int setUpdateNickName(MemberVO memberVO) throws Exception{
		
		return memberMapper.setUpdateNickName(memberVO);
	}
	
	
	public int setUpdatePassword(MemberVO memberVO) throws Exception{
		
		memberVO.setPassword(bCryptPasswordEncoder.encode(memberVO.getPassword()));
		
		return memberMapper.setUpdatePassword(memberVO);
	}
	
	
	public int setDeleteUser(MemberVO memberVO) throws Exception{
		
		return memberMapper.setDeleteUser(memberVO);
	}
	
	
	public boolean passwordCheck(MemberVO memberVO) throws Exception{
		MemberVO memberVO2 = new MemberVO();
		memberVO2 = memberMapper.getUsername(memberVO);
		boolean passwordCheck = false;
		
		if(bCryptPasswordEncoder.matches(memberVO.getPassword(), memberVO2.getPassword())) {
			passwordCheck= true;
		}else {
			passwordCheck=false;
		}
		
		return passwordCheck;
		
	}
	
	
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
	 
	
	
	
	
	


