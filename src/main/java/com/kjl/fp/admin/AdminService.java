package com.kjl.fp.admin;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kjl.fp.board.BoardCtgVO;
import com.kjl.fp.board.BoardFilesVO;
import com.kjl.fp.board.BoardVO;
import com.kjl.fp.board.util.BoardFileManager;
import com.kjl.fp.member.MemberVO;
import com.kjl.fp.payment.PaymentInfoVO;



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
	
	// 해당 board_ctg_id의 board_type 가져오기
	public BoardCtgVO getBoardType(BoardVO boardVO) throws Exception{
		
		return adminMapper.getBoardType(boardVO);
	}
	
	// 게시글 추가하기
	public int insertPost(BoardVO boardVO, MultipartFile file) throws Exception{
		
		int result = adminMapper.insertPost(boardVO);
		
		if(!file.isEmpty()) {
			
			String fileName = boardFileManager.fileSave("/upload/boardImage/", file);
			
			BoardFilesVO boardFilesVO = new BoardFilesVO();
			boardFilesVO.setBoard_id(boardVO.getBoard_id());
			boardFilesVO.setFileName(fileName);
			boardFilesVO.setFileOriName(file.getOriginalFilename());
			
			result = adminMapper.insertPostFile(boardFilesVO);
		}

		return result;
	}
	
	// 게시글 업데이트
	public int updatePost(BoardVO boardVO, MultipartFile multipartFile) throws Exception{
		
		BoardFilesVO boardFilesVO = adminMapper.getBoardFile(boardVO);
		
		// 기존에 있던 파일 삭제
		String path = "static";
		String filePath = "/upload/boardImage/" + boardFilesVO.getFileName();
		
		ClassPathResource classPathResource = new ClassPathResource(path);
		
		File file = new File(classPathResource.getFile(), filePath);
		
		boardFileManager.fileDelete(file);
		
		// 새로운 파일 저장
		if(!multipartFile.isEmpty()) {
			
			String fileName = boardFileManager.fileSave("/upload/boardImage/", multipartFile);
			
			BoardFilesVO boardFilesVO2 = new BoardFilesVO();
			boardFilesVO2.setBoard_id(boardVO.getBoard_id());
			boardFilesVO2.setFileName(fileName);
			boardFilesVO2.setFileOriName(multipartFile.getOriginalFilename());
			
			adminMapper.updatePostFile(boardFilesVO2);
		}
		
		return adminMapper.updatePost(boardVO);
	}
	
	// 게시글 삭제
	public int deletePost(BoardVO boardVO) throws Exception{
		
		// 해당 게시글 파일 삭제하기
		BoardFilesVO boardFilesVO = adminMapper.getBoardFile(boardVO);
		
		// 기존에 있던 파일 삭제
		if(boardFilesVO != null) {
			String path = "static";
			String filePath = "/upload/boardImage/" + boardFilesVO.getFileName();
			
			ClassPathResource classPathResource = new ClassPathResource(path);
			
			File file = new File(classPathResource.getFile(), filePath);
			
			boardFileManager.fileDelete(file);
		}
		
		return adminMapper.deletePost(boardVO);
	}
	
	// ===================================================== payment
	
	// Payment List 가져오기
	public List<PaymentInfoVO> getPaymentList() throws Exception{
		
		return adminMapper.getPaymentList();
	}

}
