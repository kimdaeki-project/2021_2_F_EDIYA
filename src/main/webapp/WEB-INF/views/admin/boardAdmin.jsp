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
	<link type="text/css" rel="stylesheet" href="../css/admin/adminBoard.css">
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
				<li><a href="adminpage">회원관리</a></li>
				<li  class="on"><a href="boardAdmin">게시판관리</a></li>
				<li><a href="menuAdmin">메뉴관리</a></li>
			</ul>	
		
	</div>

	
	<h1>게시판 관리 페이지입니다.</h1>
	
	<div class="adminBoard_container">
		<ul class="board_ctg_wrap">
			<li class="board_ctg">
				<span class="board_ctg_title">FaQ 게시판</span>
			</li>
			<li class="board_ctg">
				<span class="board_ctg_title">사회공헌 게시판</span>
			</li>
			<li class="board_ctg">
				<span class="board_ctg_title">이디야소식 게시판</span>
			</li>
		</ul>
	</div>
	

</section>



<!-- footer  -->
<c:import url="../temp_common/footer.jsp"></c:import>
<!-- /footer  -->
</body>
</html>