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
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
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

	<div class="admin_board_container">
		
		<!-- (1번: notice, 2번: event, 3번: social_mate, 4번: social_campus, 5번: social_sanitation, 6번: social_accompany, 7번: social_etc, .... 추가) -->
		<div class="board_ctg">
			
			<select id="category">
				<option value=""> == 카테고리 선택 == </option>
				<c:forEach items="${ctg_list}" var="list">
					<option value="${list.board_type}">
						${list.board_type_k}
					</option>
				</c:forEach>
			</select>
			
		</div>
		
	</div>
	
</section>



<!-- footer  -->
<c:import url="../temp_common/footer.jsp"></c:import>

<!-- /footer  -->
<script type="text/javascript">
	
	// 카테고리 변경 할때마다 list 바뀌기
	
</script>
</body>
</html>