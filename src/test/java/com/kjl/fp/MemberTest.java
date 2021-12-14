package com.kjl.fp;

import static org.junit.Assert.assertNotNull;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.kjl.fp.member.MemberMapper;
import com.kjl.fp.member.MemberVO;

@SpringBootTest
class MemberTest {
	
	@Autowired
	private MemberMapper memberMapper;

	@Test
	void test() {
		String test = "ansan819@naver.com";
		MemberVO memberVO = new MemberVO();
		MemberVO memberVO2 = new MemberVO();
		memberVO.setUserName(test);
		
		try {
			memberVO2 = memberMapper.getCoupon(memberVO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(memberVO2.getName());
		System.out.println(memberVO2.getCoupons().get(0).getCouponName());
		
		assertNotNull(memberVO2);
		
		
	}

}
