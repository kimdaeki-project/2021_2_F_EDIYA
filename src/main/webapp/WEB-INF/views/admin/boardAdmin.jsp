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
				<li><a href="paymentAdmin">결제현황관리</a></li>
			</ul>	
		
	</div>

	<div class="admin_board_container">
		
		<!-- (1번: notice, 2번: event, 3번: social_mate, 4번: social_campus, 5번: social_sanitation, 6번: social_accompany, 7번: social_etc, .... 추가) -->
		<div class="board_ctg">
			
			<select id="category" name="board_ctg_id">
				<option value=""> == 카테고리 선택 == </option>
				<c:forEach items="${ctg_list}" var="list">
					<option value="${list.board_ctg_id}">
						${list.board_type_k}
					</option>
				</c:forEach>
			</select>
			
		</div>
		
		<div class="board_list">
		</div>
		
		<div class="board_button_box">
			<!-- 게시글 추가 버튼 -->
			<button class="board_button insert">
				게시글 추가
			</button>
		</div>
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
	
	// 추가하기버튼
	$(".board_button.insert").click(function () {
		
		location.href = "boardInsert";
	})
	
	// 수정,삭제 버튼
	$(document).on("click", ".update_btn", function () {
		// 해당 게시글 번호
		let board_id = $(this).data("id");
		
		location.href = "boardUpdate?board_id=" + board_id;
	})
	
	$(document).on("click", ".delete_btn", function () {	
		// 해당 게시글 번호
		let select_ctg_id = $("#category").val();
		let board_id = $(this).data("id");
		
		let answer = confirm("해당 게시물을 삭제하시겠습니까?");
		
		if(answer){
			$.ajax({
				url: "boardDelete",
				type: "GET",
				data: {
					board_id: board_id,
					board_ctg_id: select_ctg_id
				},
				dataType: "html",
				success: function (result) {
					$(".board_list").html(result);
				},
				error: function (xhr, status, error) {
					console.log(error);
				}
			});
		}else{
			alert("삭제 취소");
		}
	})
	
</script>
</body>
</html>