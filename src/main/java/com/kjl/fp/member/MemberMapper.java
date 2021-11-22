package com.kjl.fp.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	
	//login
	public MemberVO getSelectOne(String username) throws Exception;


}
