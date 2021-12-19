package com.kjl.fp.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kjl.fp.board.BoardCtgVO;
import com.kjl.fp.board.BoardFilesVO;
import com.kjl.fp.board.BoardVO;
import com.kjl.fp.member.MemberVO;
import com.kjl.fp.payment.PaymentInfoVO;

@Mapper
public interface AdminMapper {
	
	public List<MemberVO> getUsers() throws Exception;
	
	// 게시판 카테고리 가져오기
	public List<BoardCtgVO> getBoardCtg() throws Exception;
	
	// 선택한 카테고리 리스트 가져오기
	public List<BoardVO> getSelectCtgList(BoardCtgVO boardCtgVO) throws Exception;
	
	// 해당 board_ctg_id의 board_type 가져오기
	public BoardCtgVO getBoardType(BoardVO boardVO) throws Exception;
	
	// 해당 board_id의 파일 가져오기
	public BoardFilesVO getBoardFile(BoardVO boardVO) throws Exception;
	
	// Payment List 가져오기
	public List<PaymentInfoVO> getPaymentList() throws Exception;
	
	// 게시글 추가하기
	public int insertPost(BoardVO boardVO) throws Exception;
	
	// 게시글의 파일추가하기
	public int insertPostFile(BoardFilesVO boardFilesVO) throws Exception;
	
	// 게시글 업데이트
	public int updatePost(BoardVO boardVO) throws Exception;
	
	// 게시글 파일 업데이트
	public int updatePostFile(BoardFilesVO boardFilesVO) throws Exception;
	
	// 게시글 삭제
	public int deletePost(BoardVO boardVO) throws Exception;
	
}
