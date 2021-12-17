package com.kjl.fp.board.util;

public class BoardNullCheck {
	
	// 공백 또는 Null 체크
	public static boolean isEmpty(Object object) {
		
		if(object == null) {
			return true;
		}
		
		return false;
	}
}
