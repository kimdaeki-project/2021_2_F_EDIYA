<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="ajaxResult">
	<form id="post">
		
		유형 : 
			<select name="board_type" id="board_type">
				<option value="notice">공지사항</option>
				<option value="event">이벤트</option>
				<option value="social_mate">메이트 희망기금</option>
				<option value="social_campus">캠퍼스 희망기금</option>
				<option value="social_sanitany">이디야의 동행</option>
				<option value="social_etc">기타 활동</option>
			</select>
		제목 : <input type="text" name="board_title">
		내용 : <div id="summernote"></div>
		작성자 : <input type="text" name="board_writer">
		<!-- 첨부파일 : <input type="file" name="board_file"> -->
		
		<button type="button" class="insert_btn">작성하기</button>
		
	</form>
</div>

<script>
	
	$(".insert_btn").on("click", function () {
		
		alert("게시물이 성공적으로 작성되었습니다.")
		

		let modal = $(".modal");
		modal.fadeOut();
		
		let formData = new FormData($("#post")[0]);
	})
	

	$(document).ready(function () {
	
		let board_type = '${board_type}';
		
		$("#board_type option[value=" + board_type + "]").attr("selected", "selected");
			
	})	
	
	$('#summernote').summernote({
	    placeholder: 'Hello stand alone ui',
	    tabsize: 2,
	    height: 120,
	    toolbar: [
	      ['style', ['style']],
	      ['font', ['bold', 'underline', 'clear']],
	      ['color', ['color']],
	      ['para', ['ul', 'ol', 'paragraph']],
	      ['table', ['table']],
	      ['insert', ['link', 'picture', 'video']],
	      ['view', ['fullscreen', 'codeview', 'help']]
	    ]
  	});
</script>
