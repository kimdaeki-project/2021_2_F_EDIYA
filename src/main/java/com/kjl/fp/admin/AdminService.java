package com.kjl.fp.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kjl.fp.board.BoardCtgVO;
import com.kjl.fp.board.BoardFilesVO;
import com.kjl.fp.board.BoardVO;
import com.kjl.fp.board.util.BoardFileManager;
import com.kjl.fp.member.MemberVO;



@Service
public class AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	private BoardFileManager boardFileManager;
	
	public List<MemberVO> getUsers() throws Exception{
		return adminMapper.getUsers();
	}
	
	// 게시판 카테고리 가져오기
	public List<BoardCtgVO> getBoardCtg() throws Exception{
		
		return adminMapper.getBoardCtg();
	}
	
	// 선택한 카테고리 리스트 가져오기
	public List<BoardVO> getSelectCtgList(BoardCtgVO boardCtgVO) throws Exception{
		
		return adminMapper.getSelectCtgList(boardCtgVO);
	}
	
	// 게시글 추가하기
	public int insertPost(BoardVO boardVO, MultipartFile file) throws Exception{
		
		int result = adminMapper.insertPost(boardVO);
		
		String fileName = boardFileManager.fileSave("/upload/boardImage/", file);
		
		BoardFilesVO boardFilesVO = new BoardFilesVO();
		boardFilesVO.setBoard_id(boardVO.getBoard_id());
		boardFilesVO.setFileName(fileName);
		boardFilesVO.setFileOriName(file.getOriginalFilename());
		
		result = adminMapper.insertPostFile(boardFilesVO);
		
		
		return result;
	}

}
