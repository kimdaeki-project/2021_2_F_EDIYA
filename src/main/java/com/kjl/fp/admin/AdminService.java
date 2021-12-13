package com.kjl.fp.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kjl.fp.member.MemberVO;



@Service
public class AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	
	public List<MemberVO> getUsers() throws Exception{
		return adminMapper.getUsers();
	}
	
	
	
	

}
