package com.kjl.fp.board.util;

import lombok.Data;

@Data
public class BoardPager {
	
	private Integer perPage;
	private Integer pn;
	private Integer startRow;
	private Long startNum;
	private Long lastNum;
	
	private boolean lastCheck;
	
	/*---------계산---------*/
	public void makeNum(Long totalCount) {
		
		Long totalPage = totalCount/this.getPerPage();
		if(totalCount%this.getPerPage() != 0) {
			totalPage++;
		}
		
		Long perBlock = 5L;
		Long totalBlock = totalPage/perBlock;
		if(totalPage%perBlock != 0) {
			totalBlock++;
		}
		
		Long curBlock = this.getPn()/perBlock;
		if(this.getPn()%perBlock != 0) {
			curBlock++;
		}
		
		startNum = (curBlock-1)*perBlock+1;
		lastNum = curBlock*perBlock;
		
		if(curBlock == totalBlock) {
			lastNum = totalPage;
			lastCheck = true;
		}else {
			lastCheck = false;
		}
	}
	
	public void makeRow() {
		this.startRow = (this.getPn()-1) * this.getPerPage();
	}
	
	/*---------검증---------*/
	public Integer getPn() {
		if(this.pn==null || this.pn<=0) {
			this.pn = 1;
		}
		
		return pn;
	}
	
	public Integer getPerPage()  {
		if(this.perPage==null || this.perPage==0) {
			this.perPage = 10;
		}
		
		return perPage;
	}
}
