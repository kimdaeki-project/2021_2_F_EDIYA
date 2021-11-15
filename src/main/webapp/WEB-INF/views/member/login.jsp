<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="../css/common/common.css">
<link type="text/css" rel="stylesheet" href="../css/member/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<c:import url="../temp_common/header.jsp"></c:import>
	
	
 <div class="login_bg">	
	<div class="login_con">
		<h1 class="login_tt"><img src="../images/member/login/login_tt.png" width="227" height="76" alt="로그인"></h1>
		<p class="login_txt">
			<em>Welcome, Ediya Coffee</em>
			  이디야커피에 오신 것을 환영합니다.
			</p>
			<div class="mem_info" style="margin-bottom:20px;">
				<h2>이디야 회원이셨나요?
				<em>이디야 멤버스가 새로워졌습니다.</em></h2>
				<p>
					회원님께 더 좋은 서비스를 제공해드리고자,
					<br>
					 선물하기, 이디야카드, 스마트오더 등의 서비스를 추가하여 더욱 새로워졌습니다.
					<br>
					 회원님께서 새로운 서비스를 이용하시기 위해서는 본인 인증이 필요합니다.
					<br>
					 본인 인증은 1회만 진행하며, 인증후, 더 편리하게 서비스를 이용하실 수 있습니다.
					</p>
					<a href="#c" onclick="">이디야 멤버스 가입정보 찾기</a>
			</div>
			
			
			<div class="login_box" id="login_wrap">
		<div id="login_form">
		<form action="./login" name="login_form" method="POST" >
		<fieldset>
			<legend>ADMIN LOGIN</legend>
				<div>                                                                           <!-- 영문만 입력  -->
					<input type="text" name="user_id" id="user_id" placeholder="이메일을 입력하세요" style="ime-mode:disabled">
					<input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요">
				</div>
				
				<div class="email_save">
				<input type="checkbox" id="email_save">
				<label for="email_save">이메일 저장</label>
				</div>
				<input type="submit" name="Submit" value="로그인" class="login_btn">
				
				<div class="join_btn">
					<a href="./join">회원가입</a>
					<a href="#c">이메일 찾기</a>
					<a href="#c">비밀번호 찾기</a>
				</div>
		
		</fieldset>
		</form>
		</div>
	</div>
		
			
			
			
			
	</div>
	
</div>	



<c:import url="../temp_common/footer.jsp"></c:import>


<!-- Script -->
	<script type="text/javascript" src="../js/common.js"></script>
</body>
</html>