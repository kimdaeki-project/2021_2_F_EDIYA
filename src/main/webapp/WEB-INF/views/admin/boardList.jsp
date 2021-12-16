<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="board_list_table">
	<thead>
		<tr>
			<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th></th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${empty list}">
			<tr>
				<td rowspan="5">작성된 게시물 및 문의사항이 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.board_id}</td><td>${list.board_title}</td><td>${list.board_writer}</td><td>${list.board_regdate}</td>
				<td>
					<span class="board_update">수정</span>	
					<span class="board_delete">삭제</span>	
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>	