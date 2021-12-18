package com.kjl.fp.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kjl.fp.board.BoardCtgVO;
import com.kjl.fp.member.MemberVO;

@Mapper
public interface AdminMapper {
	
	public List<MemberVO> getUsers() throws Exception;
	
	// 게시판 카테고리 가져오기
	public List<BoardCtgVO> getBoardCtg() throws Exception;
}
