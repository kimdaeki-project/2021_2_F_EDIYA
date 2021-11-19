<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="../css/common/common.css">
<link type="text/css" rel="stylesheet" href="../css/member/join.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<c:import url="../temp_common/header.jsp"></c:import>

	<section id="contentWrap" class="visual_big visual_txt_w">
	<div class="sub_visual join_visual">
		<h1 class="con_tt">
			<img alt="회원가입" src="${pageContext.request.contextPath}/images/member/join/join_tt.png" width="302" height="78">
		</h1>
		<p class="visual_mt">Join Us, Ediya Coffee</p>
		<p class="visual_txt">이디야멤버스 가입을 위한 약관 동의 및 본인 인증단계입니다.</p>
	</div>
	
	<!--  입력란  -->
		<div class="join_box_bg">
			<div class="join_box">
			<form action="" name="join_form" id="join_form">
				<div class="join_con">
					<h2 class="join_tt ns">회원정보입력</h2>
				<fieldset>
					<div class="join_form top_form">
						<dl>
							<dt>
								<label for="id">아이디(이메일)</label>
							</dt>
							<dd>이메일넣기</dd>
						</dl>
						<dl>
							<dt>
								<label for="password">
									비밀번호
								</label>
							</dt>
							<dd>
								<input type="password" name="password" id="password" placeholder="비밀번호">
							</dd>
						</dl>
						<p class="info_txt">
							안전한 비밀번호를 위해 숫자, 문자 조합하여 10~16자 이상으로 입력해주세요.
						</p>
					<dl>
						<dt>
						<label for="pw_ck">
							비밀번호 확인
						</label>
						</dt>
						<dd>
						<input type="password" id="pw_ck">
						</dd>
					</dl>
					<p class="info_pwck" id="pw_error" style="display:none;">
						비밀번호가 일치하지 않습니다.
					</p>
					<p class="info_txt" id="pw_ok" style="display:none;">
						비밀번호가 일치합니다!
					</p>
						<dl>
						   <dt>
							<label for="name">이름</label>
							</dt>
							<dd>
							<input type="text" name="name" id="name" placeholder="이름을 적어주세요">
							</dd>
						</dl>
						<dl>
							<dt>
							<label for="phone">휴대폰</label>
							</dt>
							<dd>
							<input type="tel" name="phone" id="phone" placeholder="-를 빼고 적어주세요">
							</dd>
						</dl>
					<dl>
						<dt>
							<label for="nickname">닉네임</label>
						</dt>
						<dd>
							<input type="text" name="nickName" id="nickname" placeholder="한글,숫자 5지 이내로 입력하세요">
						</dd>
					</dl>
					<p class="info_txt">욕설 등 부적절한 단어는 제한을 받습니다.</p>
					<dl>
						<dt>
							<label for="birthday">생년월일</label>
						</dt>
						<dd>
							<input type="date" name="birthday" id="birthday">
						</dd>
					</dl>
					
					</div>
					
					
				</fieldset>
				</div>
				
				<div class="box_btn">
				<a href="#c" onclick="" class="blue_btn full_btn">가입하기</a>
			</div>
				
				
			</form>
		</div>
		</div>


	</section>







<c:import url="../temp_common/footer.jsp"></c:import>
<script type="text/javascript">



/* 비밀번호 확인 js  */

const check = false;

$("#password").blur(function() {
	
	const pw = $("#password").val();
	const pwCk =$("#pw_ck").val();
	
	if(pw == pwCk){
		$(".info_pwck").hide();	
		$("#pw_ok").show();	
		check = true;
	}else{
		$("#pw_ok").hide();	
		$(".info_pwck").show();	
		check = false;
	}
	
})


$("#pw_ck").keyup(function() {
	const pw = $("#password").val();
	const pwCk =$("#pw_ck").val();
	
	if(pw == pwCk){
		$(".info_pwck").hide();	
		$("#pw_ok").show();	
		check = true;
	}else{
		$("#pw_ok").hide();	
		$(".info_pwck").show();	
		check = false;
		
	}
	
	
})
	
	
</script>
</body>
</html>