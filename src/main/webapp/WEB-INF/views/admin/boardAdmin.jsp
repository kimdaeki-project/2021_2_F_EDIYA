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

	
	<h1>게시판 관리 페이지입니다.</h1>
	
	<div class="adminBoard_container">
		<ul class="board_ctg_wrap">
			<li class="board_ctg" data-category="faq">
				<span class="board_ctg_title">FaQ 게시판</span>
			</li>
			<li class="board_ctg" data-category="campaign">
				<span class="board_ctg_title">사회공헌 게시판</span>
			</li>
			<li class="board_ctg" data-category="news">
				<span class="board_ctg_title">이디야소식 게시판</span>
			</li>
		</ul>
		
		<input type="hidden" class="select_type" value="">
		<ul class="board_typeList_wrap">
			<c:forEach items="${typeList}" var="list">
					<li class="board_type" data-name="${list}">
						<span class="board_typeList_title">
							<c:choose>
								<c:when test="${list eq 'notice'}">
									공지사항
								</c:when>
								<c:when test="${list eq 'event'}">
									이벤트
								</c:when>
								<c:when test="${list eq 'social_mate'}">
									메이트 희망기금
								</c:when>
								<c:when test="${list eq 'social_campus'}">
									캠퍼스 희망기금
								</c:when>
								<c:when test="${list eq 'social_sanitation'}">
									식수위생 캠페인
								</c:when>
								<c:when test="${list eq 'social_accompany'}">
									이디야의 동행
								</c:when>
								<c:when test="${list eq 'social_etc'}">
									기타 활동
								</c:when>
							</c:choose>
						</span>
					</li>
			</c:forEach>
		</ul>
		
		<div class="board_list">
		</div>
		
		<button type="button" class="board_insert">게시물 추가</button>
		
	</div>
	

</section>



<!-- footer  -->
<c:import url="../temp_common/footer.jsp"></c:import>

<!-- 모달 창 -->
<div class="modal">
	
	<div class="admin_modal">
	</div>
	
</div>

<!-- /footer  -->
<script type="text/javascript">

	//Modal 바깥 영역 클릭 시 이벤트
	$(document).on("mouseup", function (e) {
		
		let modal = $(".modal");
		
		if(modal.has(e.target).length === 0){
			modal.fadeOut();		
		}	
	})
	
	// insert버튼 클릭 이벤트
	$(".board_insert").on("click", function () {
		
		let modal = $(".modal");
		let select_type = $(".select_type").val();
		
		modal.fadeIn();
		
		$.ajax({
			url: "viewBoardInsert",
			type: "GET",
			data: {
				board_type: select_type
			},
			dataType: "html",
			success: function (result) {
				$(".admin_modal").html(result);
			},
			error: function (xhr, status, error) {
				console.log(error);
			}
		});
	})
	
	// 각 카데고리별 리스트 불러오기
	$(".board_ctg").on("click", function () {
		
		let index = $(this).index();
		
		$(this).addClass("on");
		$(".board_ctg").not(":eq(" + index + ")").removeClass("on");
		
		let board_category = $(this).data("category");
		
		$.ajax({
			url: "getCategoryList",
			type: "GET",
			data: {
				board_category: board_category
			},
			dataType: "html",
			success: function (result) {
				result = $(result).find(".board_typeList_wrap");
				$(".board_typeList_wrap").html(result);
			},
			error: function (xhr, status, error) {
				console.log(error);
			}
		});
		
	})
	
	// 각 카테고리 타입들 가져오기
	$(document).on("click", ".board_type", function () {
		
		let index = $(".board_type").index(this);	
		let board_type = $(".board_type").eq(index).data("name");
		
		$(this).addClass("on");
		$(".board_type").not(":eq(" + index + ")").removeClass("on");
		
		$.ajax({
			url: "getTypeList",
			type: "GET",
			data: {
				board_type: board_type
			},
			dataType: "html",
			success: function (result) {
				$(".select_type").val(board_type);
				$(".board_list").html(result);
			},
			error: function (xhr, status, error) {
				console.log(error);
			}
		});
		
	})
	
</script>
</body>
</html>