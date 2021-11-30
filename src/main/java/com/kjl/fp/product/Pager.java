package com.kjl.fp.product;

import lombok.Data;

@Data
public class Pager {
	
	private String kind;
	private String search;
	
	//페이지 번호
	private Integer pn;
	//한 페이지에 출력할 갯수
	private Integer perPage;
	//limit 시작 번호
	private Integer startRow;
	
	//시작번호
	private Long startNum;
	//끝번호
	private Long lastNum;
	
	//마지막 번호
	private boolean lastCheck;
	
//-----------------------------------------------------------------------------------
	
	//검색
	public String getSearch() {
		if (this.search==null) {
			this.search="";
		}
		return this.search;
	}
	
	//setter, getter
	public Integer getPn () {
		if(this.pn==null || this.pn<1) {
			this.pn=1;
		}
		return pn;
	}
	
	public Integer getPerPage () {
		if (this.perPage==null || this.perPage<1) {
			this.perPage=3;
		}
		return perPage;
	}
	
	public void makeRow () {
		this.startRow = (this.getPn()-1)*this.getPerPage();
	}
	
	
	public void makeNum (Long totalCount) {
		
		//전체 페이지 구하기
		Long totalPage = totalCount/this.getPerPage();
		if (totalCount%this.getPerPage() != 0) {
			totalCount++;
		}
		
		//총 블럭 갯수 구하기
		Long perBlock=3L;
		Long totalBlock = totalPage/perBlock;
		if(totalPage%perBlock != 0) {
			totalPage++;
		}
		
		//현재 블럭 번호 구하기
		Long curBlock = this.getPn()/perBlock;
		if (this.getPn()%perBlock != 0) {
			curBlock++;
		}
		
		//시작번호와 끝번호 구하기
		startNum = (curBlock-1)*perBlock+1;
		lastNum = curBlock*perBlock;
		
		if (curBlock==totalBlock) {
			lastCheck=true;
			lastNum=totalPage;
		}
	}
	
	
	
}
