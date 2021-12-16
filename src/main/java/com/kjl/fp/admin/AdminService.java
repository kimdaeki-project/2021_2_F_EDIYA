package com.kjl.fp.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kjl.fp.member.MemberVO;



@Service
public class AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	
	public List<MemberVO> getUsers() throws Exception{
		return adminMapper.getUsers();
	}
	
	
	// board_admin ========================================= //
	
	// board별 분류
	@GetMapping("getCategoryList")
	public List<String> getCategoryList(String board_category) throws Exception{
		
		List<String> board_type_list = new ArrayList<>();
		
		if(board_category.equals("faq")) {
			
		}
		else if(board_category.equals("campaign")) {
			board_type_list.add("social_mate");
			board_type_list.add("social_campus");
			board_type_list.add("social_sanitation");
			board_type_list.add("social_accompany");
			board_type_list.add("social_etc");
		}
		else if(board_category.equals("news")) {
			board_type_list.add("notice");
			board_type_list.add("event");
		}
		
		return board_type_list;
	}
	// ===================================================== //
	
	
	

}
