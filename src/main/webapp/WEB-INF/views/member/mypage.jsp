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