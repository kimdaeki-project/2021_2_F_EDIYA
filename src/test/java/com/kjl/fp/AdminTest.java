package com.kjl.fp;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.kjl.fp.admin.AdminMapper;
import com.kjl.fp.member.MemberVO;

@SpringBootTest
class AdminTest {
	
	@Autowired
	private AdminMapper adminMapper;

	@Test
	void getUsersTest() throws Exception {
		
		List<MemberVO> ar = new ArrayList<MemberVO>();
		
		
		ar = adminMapper.getUsers();
		
		assertNotNull(ar);
		
		
		
	}

}
