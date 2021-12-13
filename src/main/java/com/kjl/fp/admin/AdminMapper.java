package com.kjl.fp.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kjl.fp.member.MemberVO;

@Mapper
public interface AdminMapper {
	
	public List<MemberVO> getUsers() throws Exception;

}
