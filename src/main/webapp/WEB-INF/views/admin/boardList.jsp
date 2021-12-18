<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<table class="board_list_tbl">
	<thead>
		<tr>
			<th>게시글 번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일자</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${select_ctg_list}" var="list">
			<tr>
				<td>${list.board_id}</td>
				<td>${list.board_title}</td>
				<td>${list.board_writer}</td>
				<td><fmt:formatDate value="${list.board_regdate}" pattern="yyyy-MM-dd"/></td>
				<td>${list.board_hit}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>