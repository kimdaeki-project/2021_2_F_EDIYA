<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
		
		<form action="insertPost" method="POST" enctype="multipart/form-data">
		
			<!-- (1번: notice, 2번: event, 3번: social_mate, 4번: social_campus, 5번: social_sanitation, 6번: social_accompany, 7번: social_etc, .... 추가) -->
			<div class="block">
				카테고리 선택 :
				<select id="category" name="board_ctg_id">
					<option value=""> == 카테고리 선택 == </option>
					<c:forEach items="${ctg_list}" var="list">
						<option value="${list.board_ctg_id}">
							${list.board_type_k}
						</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="block">
				제목 :
				<input type="text" name="board_title">
			</div>
			
			<div class="block">
				작성자 :
				<sec:authentication property="principal" var="user"/>
				<input type="text" name="board_writer" readonly="readonly" value="${user.username}">
			</div>
			
			<div class="block">
				<textarea id="summernote" name="board_content"></textarea>
			</div>
			
			<div class="block">
				썸네일 이미지 :
				<input type="file" name="board_file">
			</div>
			
			<div class="block">
				<button type="submit">게시글 추가</button>
			</div>	
		
		</form>
	</div>
	
</section>



<!-- footer  -->
<c:import url="../temp_common/footer.jsp"></c:import>

<!-- /footer  -->
<script type="text/javascript">
	
	// 카테고리 변경 할때마다 list 바뀌기
	$("#category").on("change", function () {
		
		let select_ctg_id = $(this).val();

		// 해당 ctg 리스트 가져오기
		$.ajax({
			url: "getSelectCtgList",
			type: "GET",
			data: {
				board_ctg_id: select_ctg_id,
			},
			success: function (result) {
				$(".board_list").html(result);
			},
			error: function (xhr, status, error) {
				console.log(error);
			}
		});
	})
	
	// summernote
	$('#summernote').summernote({
       placeholder: '본문 내용을 입력해 주세요.',
       tabsize: 2,
       height: 300,
       toolbar: [
         ['style', ['style']],
         ['font', ['bold', 'underline', 'clear']],
         ['color', ['color']],
         ['para', ['ul', 'ol', 'paragraph']],
         ['table', ['table']],
         ['insert', ['link', 'picture', 'video']],
         ['view', ['fullscreen', 'codeview', 'help']]
       ]
     })
     
     $('#summernote').summernote('backColor', '#B2CCFF');
</script>
</body>
</html>