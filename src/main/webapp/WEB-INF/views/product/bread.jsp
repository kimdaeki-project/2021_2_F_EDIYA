<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>EDIYA COFFEE</title>
	<link rel="stylesheet" type="text/css" href="../css/index.css">
	<link rel="stylesheet" type="text/css" href="../css/common/common.css">
	<link rel="stylesheet" type="text/css" href="../css/product/bread/bread.css">
	<link rel="stylesheet" type="text/css" href="../css/product/product.bxslider.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!-- Start -->
	<div id="wrapper">
	
	<c:import url="../temp_common/header.jsp"></c:import>
	
	<section id="container">
	
		<!-- 사진 css -->
		<div class="sub_visual bakery_visual">
	    	<h1 class="con_tt">베이커리</h1>
	    	<p class="menu_txt">ALWAYS BESIDE YOU, <strong>EDIYA BAKERY</strong></p>
	  	</div>
	  	
	  	<!-- 메뉴 css -->
	  	<ul class="lnb">
			<li><a href="<!-- say* 음료링크 -->">음료</a></li>
			<li class="on"><a href="<!-- say* 베이커리링크 -->">베이커리</a></li>
			<li><a href="<!-- say* 원두링크 -->">원두</a></li>
		</ul>
		
		<!-- 우측 소메뉴 -->
		<div class="location"><span>HOME</span><span>메뉴</span>베이커리</div>
	
	</section>
	
	<c:import url="../temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->



<!-- Script -->
	<script type="text/javascript" src="../js/common.js"></script>

</body>
</html>