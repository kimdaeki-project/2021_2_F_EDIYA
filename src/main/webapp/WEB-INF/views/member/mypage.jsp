<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="../css/common/common.css">
<link type="text/css" rel="stylesheet" href="../css/member/mypage.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- nav  -->
<c:import url="../temp_common/header.jsp"></c:import>
<!-- /nav  -->


	<section id="contentWrap" class="visual_big visual_txt_w">
	
	<div class="sub_visual status_visual">
		<h1 class="con_tt">
			<img src="${pageContext.request.contextPath}/images/member/mypage/status_tt.png" width="753" height="81">
		</h1>
		<p class="visual_mt">My Member's Status</p>
		<p class="visual_txt">고객님의 이디야 멤버스 서비스 이용현황입니다.</p>
	</div>
	
	
	
	<div class="status_wrap">
	
		<div class="status_con">
			<div class="con_align">
				<div class="status_inform_bg">
					<div class="status_inform">
						<div class="inform_con_wrap">
							<div class="inform_con">
								<div class="level_logo">
									<img src="${pageContext.request.contextPath}/images/member/mypage/level_family.png">
								</div>
								<p class="ns level_txt">
									<span class="status_bold_txt">이름</span>
									회원님은 <br>
									<span class="status_family_txt status_exbold_txt">회원레벨</span>
									입니다.
								</p>
							</div>
							<div class="inform_con inform_modify">
								<ul class="inform_txt">
									<li>아이디 : </li>
									<li>닉네임 : </li>
									<li>휴대폰 : </li>
									<li>수신동의 : </li>
								</ul>
								<a href="" class="status_btn_b">
									회원정보 수정
								</a>
							</div>
						</div>
						<div class="inform_con con_last">
							<ul>
								<li class="status_now">
									<div class="now_icon">
										<img src="${pageContext.request.contextPath}/images/member/mypage/status_stamp_icon.png">
									</div>
									<dl class="now_con">
										<dt class="now_tt">스탬프 현황</dt>
										<dd class="now_txt">
											<span class="status_blue_txt status_bold_txt">0</span>
											/12
										</dd>
									</dl>
								</li>
								<li class="status_now">
									<div class="now_icon">
										<img src="${pageContext.request.contextPath}/images/member/mypage/status_coupon_icon.png">
									</div>
									<dl class="now_con">
										<dt class="now_tt">보유 쿠폰</dt>
										<dd class="now_txt">
											<span class="status_blue_txt status_bold_txt">0</span>
										</dd>
									</dl>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="status_con">
			<div class="con_align">
			
			</div>
		</div>
		
		<div class="status_con">
			<div class="con_align">
			
			</div>
		</div>
	
	</div>
	
	
	</section>





<!-- footer  -->
<c:import url="../temp_common/footer.jsp"></c:import>
<!-- /footer  -->

</body>
</html>