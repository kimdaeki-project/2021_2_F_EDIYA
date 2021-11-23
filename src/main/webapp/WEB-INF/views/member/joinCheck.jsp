<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="../css/common/common.css">
<link type="text/css" rel="stylesheet" href="../css/member/join.css">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!-- nav -->
<c:import url="../temp_common/header.jsp"></c:import>
<!-- /nav -->


<!-- popup  -->

<!-- /popup  -->

<!-- contents -->
<section id="contentWrap" class="visual_big visual_txt_w">
	<div class="sub_visual join_visual">
		<h1 class="con_tt">
			<img alt="회원가입" src="${pageContext.request.contextPath}/images/member/join/join_tt.png" width="302" height="78">
		</h1>
		<p class="visual_mt">Join Us, Ediya Coffee</p>
		<p class="visual_txt">이디야멤버스 가입을 위한 약관 동의 및 본인 인증단계입니다.</p>
	</div>

	<div class="join_box_bg">
	<div class="join_box">
		<form action="./join" method="get" name="join_box" id="Join_box">
			<legend>Join</legend>
			
			<div class="join_con">
				<h2 class="join_tt ns">이메일을 입력해주세요</h2>
				<p class="join_txt">이메일은 멤버스 로그인 시 아이디로 사용됩니다.</p>
				<ul class="join_email_form">
					<li class="join_email01">
					<label for="join_email01" class="blind"></label>
					<input type="text" name="email" id="email" placeholder="이메일">
					</li>
					<li class="join_at">@</li>
					<li class="join_email02">
						<label for="email_etc" class="blind"></label>
						<input type="text" name="email_etc" id="email_etc">
					</li>
					<li class="join_select">
						<select name="join_email" id="join_email">
							<option value="etc">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="nate.com">nate.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="gmail.com">gmail.com</option>
							<option value="yahoo.co.kr">yahoo.co.kr</option>
						
						</select>
				</ul>
			</div>
			
			
			<div class="join_con">
				<h2 class="join_tt ns">서비스 이용약관</h2>
				<h3 class="join_check_all on">
				  <a href="#c" id="AllCheck" onclick="join_check_all()">전체동의</a>
				  ( ※선택동의 사항이 포함되어 있습니다. )
				</h3>
				<ul class="join_check_list">
					<li>
						<dl>
						<dt>
						<p class="check_tt">
							이디야 멤버스 서비스 이용약관 동의
							<span class="blue_txt">(필수)</span>
						</p>
						<input type="checkbox" class="check_btn" id="service_ck">
						</dt>
						<dd>
							<div class="agree_con">
								<h4 class="agree_con_tt">이디야커피는 고객님의 정보를 소중히 생각합니다.</h4>
								<div class="agreement">
								<c:import url="./agreement/agreement1.jsp"></c:import>
								</div>
							</div>
						</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>
								<p class="check_tt">
								개인정보 수집 및 이용 동의
								<span class="blue_txt">(필수)</span>
								</p>
								<input type="checkbox" class="check_btn" id="privacy_ck">
							</dt>
							<dd>
								<div class="agree_con agree_con_s">
									<c:import url="./agreement/agreement2.jsp"></c:import>
								</div>
							</dd>
						</dl>
					</li>
					
					<li>
						<dl>
							<dt>
								<p class="check_tt">
									위치기반서비스 이용약관 동의
									<em class="blue_txt">(선택)</em>
								</p>
								<input type="checkbox" class="check_btn" id="location_ck" name="location_ck">
							</dt>
							<dd>
								<div class="agree_con agree_con_s">
									<c:import url="./agreement/agreement3.jsp"></c:import>
								</div>
								
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>
								<p class="check_tt">
									마케팅 활용 수신 동의
										<em class="blue_txt">(선택)</em>
									</p>
								<input type="checkbox" class="check_btn" id="use_ck" name="use_ck">
							</dt>
							<dd>
								<div class="agree_con2">
									<c:import url="./agreement/agreement4.jsp"></c:import>
								</div>
							</dd>
						</dl>
					
					</li>
					
					<li>
						<dl>
							<dt>
								<p class="check_tt">
									광고성 정보 수신 동의
									<em class="blue_txt">(선택)</em>
								</p>
								<input type="checkbox" class="check_btn" id="ad_ck" name="ad_ck">
							</dt>
							<dd>
								<div class="agree_con2">
									<c:import url="./agreement/agreement5.jsp"></c:import>
								</div>
								
							</dd>
						</dl>
					</li>
					
					<li>
						<dl style="color:red">
							※ 선택 사항에 동의하지 않으셔도 서비스 가입 및 이용이 가능하나, 동의하지 않을 경우 제공 가능한 관련 편의 사항 등(주변매장찾기, 맞춤형 쿠폰, 기타 각종 혜택 등)이 제한될 수 있습니다.
						</dl>
					</li>	
				</ul>
			</div>
			<div class="box_btn">
				<a href="#c" onclick="check()" class="blue_btn full_btn">가입하기</a>
			</div>
			
		</form>
	</div>
	
	</div>

</section>
<!-- /contents -->
	
	<!-- footer  -->
<c:import url="../temp_common/footer.jsp"></c:import>
<!-- /footer  -->

<script type="text/javascript">

/* 이메일 select  */
$('#join_email').change(function () {  			
	var code = $('#join_email option:selected').val();  
	//alert(code);
	if (code == "etc") {  
			$('#email_etc').val('');
			$('#email_etc').focus();
	} else {  
			$('#email_etc').val(code);
	}  
}); 

let result = false;

/* 전체동의 js */
function join_check_all(){
	result = !result;
	const a = document.getElementById('AllCheck')
	
	$("#service_ck,#privacy_ck,#location_ck,#use_ck,#ad_ck").prop("checked",result);
	
	if(result==true){
		 a.style.backgroundImage = "url('${pageContext.request.contextPath}/images/member/join/join_check_on.gif')"
	}else{
		a.style.backgroundImage = "url('${pageContext.request.contextPath}/images/member/join/join_check.gif')"
	}
	
	
}

/* 필수동의 및 아이디 중복 체크 */
function check() {
	const service = $('#service_ck').is(':checked');
	const privacy = $('#privacy_ck').is(':checked');
	const emailF = $('#email').val();
	const emailB = $('#email_etc').val();
	const email =	$('#email').val()+'@'+$('#email_etc').val();
	let emailCh = false;
	
	/* 이메일 null 체크  */
	if(emailF=="" || emailB=="" ){
		
		alert("이메일을 입력해주세요")
		
	}else{
		
		$.ajax({
			type:'POST',
			url:'./joinCheck',
			data: {userName:email},
			success : function(data) {

				emailCh= data;
				/* 필수 동의 체크  */
				if(service == true && privacy == true){
					/* 폼하기. 폼하기 전 메세지 출력은 즐찾에 있음  */
					if(emailCh == true){
						$("#Join_box").submit();
					}else{
						alert("가입된 이메일입니다.");
					}
					
				}else{
					alert('체크하세요!');
				}
				
				
			},
			error:function(){
				alert("에러입니다.");
			}
		
		})
		
		
		
	}

	
	
	
	
	
	
	
	
}

</script>
</body>
</html>