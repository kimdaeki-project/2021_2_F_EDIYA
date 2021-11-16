package com.kjl.fp.board.campaign;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kjl.fp.board.BoardService;
import com.kjl.fp.board.BoardVO;

@Service
public class CampaignService implements BoardService{
	
	@Autowired
	private CampaignRepository campaignRepository;
	
	@Override
	public List<BoardVO> getList(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return campaignRepository.getList(boardVO);
	}
	
}
