package com.kjl.fp.member;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberService implements UserDetailsService {
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private PasswordEncoder bCryptPasswordEncoder;
	
	private final JavaMailSender javaMailSender;
	
	
	
	
	
	
	public int setPassword(MemberVO memberVO) throws Exception{
		
		int leftLimit = 48; // numeral '0'
		int rightLimit = 122; // letter 'z'
		int targetStringLength = 10;
		Random random = new Random();

		//랜덤 문자열 생성
		String generatedString = random.ints(leftLimit,rightLimit + 1)
		  .filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
		  .limit(targetStringLength)
		  .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
		  .toString();
		
		//비번으로  DB에 저장
		memberVO.setPassword(bCryptPasswordEncoder.encode(generatedString));
		memberMapper.setPassword(memberVO);
		
		//이메일로 임시비번 발송
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setTo(memberVO.getUserName());
		simpleMailMessage.setSubject("이디야 임시비밀번호 발송");
		simpleMailMessage.setText("임시 비밀번호 : " +generatedString + "   "
				+ " 꼭 마이페이지에서 비밀번호 변경해주세요!");
		javaMailSender.send(simpleMailMessage);
		
		
		return 1;
		
	}
	
	
	
	
	public String findPW(MemberVO memberVO) throws Exception{
		
		String userName = memberMapper.findPW(memberVO);
		
		if(userName.isEmpty()) {
			return "0";
		}else {
			//userName으로 이메일 인증 보내기.
			
			String number = numberGen(6, 1);
			
			SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
			simpleMailMessage.setTo(userName);
			simpleMailMessage.setSubject("이디야 본인인증 인증번호 발송");
			simpleMailMessage.setText(number);
			javaMailSender.send(simpleMailMessage);
			
			// db에 인증코드 저장
			memberVO.setNumber(number);		
			memberMapper.setNumber(memberVO);
			
			
			return "메일 발송";
		}
		
		
	}
	
	
	public MemberVO pwCheck(MemberVO memberVO) throws Exception {
		
	   return memberMapper.getNumber(memberVO);
		
	}
	
	
	  public static String numberGen(int len, int dupCd ) throws Exception {
	        
	        Random rand = new Random();
	        String numStr = ""; //난수가 저장될 변수
	        
	        for(int i=0;i<len;i++) {
	            
	            //0~9 까지 난수 생성
	            String ran = Integer.toString(rand.nextInt(10));
	            
	            if(dupCd==1) {
	                //중복 허용시 numStr에 append
	                numStr += ran;
	            }else if(dupCd==2) {
	                //중복을 허용하지 않을시 중복된 값이 있는지 검사한다
	                if(!numStr.contains(ran)) {
	                    //중복된 값이 없으면 numStr에 append
	                    numStr += ran;
	                }else {
	                    //생성된 난수가 중복되면 루틴을 다시 실행한다
	                    i-=1;
	                }
	            }
	        }
	        return numStr;
	    }

	
	
	public String findId(MemberVO memberVO) throws Exception{
		
		String userName = memberMapper.findId(memberVO);
		
		if(userName == null) {
			return "";
		}else {
			return userName;
		}
		
	
		
	}
	
	
	public Long getCountStamp(MemberVO memberVO) throws Exception{
		return memberMapper.getCountStamp(memberVO);
	}
	
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
	 
	
	
	
	
	


