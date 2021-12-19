<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/common/common.css">
<link type="text/css" rel="stylesheet" href="../css/admin/admin.css">
<link type="text/css" rel="stylesheet" href="../css/admin/adminMember.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!-- nav  -->
<c:import url="../temp_common/header.jsp"></c:import>
<!-- /nav  -->

<section id="contentWrap" class="visual_big visual_txt_w">
	
	<div class="sub_visual status_visual">
		<h1 class="con_tt">
			
		</h1>
		<p class="visual_mt">Admin Page</p>
		<p class="visual_txt">어드민 페이지 입니다.</p>
		
		
		<ul class="lnb">
				<li class="on"><a href="adminpage">회원관리</a></li>
				<li><a href="boardAdmin">게시판관리</a></li>
				<li><a href="menuAdmin">메뉴관리</a></li>
				<li><a href="paymentAdmin">결제현황관리</a></li>
			</ul>	
		
	</div>

<div class="contents_box">
	<div class="contents_list">
	<form action="./updateRole" method="POST">
		<table border="1">
			<tr>
				<th>userName(ID)</th> <th>이름</th> <th>닉네임</th> <th>성별</th> <th>폰번호</th> <th>생일</th> <th>권한</th>
			</tr>
			
			<c:forEach items="${memberList}" var="member">
			<tr>
				<td>${member.userName}</td>
				<td>${member.name}</td>
				<td>${member.nickName}</td>
				<c:set var="sex" value="${member.sex}">
				</c:set>
				<c:if test="${sex eq 1}">
					<td>남자</td>
				</c:if>
				<c:if test="${sex eq 2}">
					<td>여자</td>
				</c:if> 
				<td>${member.phone}</td>
				<td>${member.birthday}</td>
				
			
				
				<td>
				  <c:forEach items="${member.roles}" var="r" begin="0" end="0">
				<c:set var="ro" value="${r.num}">
				</c:set>
				<c:if test="${ro eq 1}">
				<select name="roles">
					<option value="1" selected="selected">관리자</option>
				    <option value="2">일반회원</option>
				    </select>
				</c:if>
				<c:if test="${ro eq 2}">
					<select name="roles">
					<option value="1">관리자</option>
				    <option value="2"  selected="selected">일반회원</option>
				    </select>
				</c:if>
				</c:forEach>  
				</td>
				
				
			</tr>
			
			</c:forEach>
			
			
		</table>
		
		<button type="submit" class="btn_updateRoles">수정하기</button>
		</form>
	</div>
</div>



</section>



<!-- footer  -->
<c:import url="../temp_common/footer.jsp"></c:import>
<!-- /footer  -->
</body>
</html>