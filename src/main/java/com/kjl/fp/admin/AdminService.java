package com.kjl.fp.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kjl.fp.board.BoardCtgVO;
import com.kjl.fp.member.MemberVO;



@Service
public class AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	
	public List<MemberVO> getUsers() throws Exception{
		return adminMapper.getUsers();
	}
	
	// 게시판 카테고리 가져오기
	public List<BoardCtgVO> getBoardCtg() throws Exception{
		
		return adminMapper.getBoardCtg();
	}

}
