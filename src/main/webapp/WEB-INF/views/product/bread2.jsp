<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>EDIYA COFFEE</title>
	<!-- 부트 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/product/smaple.css">
</head>
<body>
<h1 class="cname">sample</h1>
<div id="demo" class="carousel slide" data-bs-ride="carousel">
<div class="carousel-inner">
<div class="sto1">
<div class="carousel-item active">
  		<a href="#c" class="sw1">
			<span><img class="swon" src="../images/common/best_icon.png" alt="new"></span>
			<img src="../images/product/bread/IMG_1527143944548.png" alt="초코 티라미수">
		</a>
	<p class="sw2"><a class="sw2" href="#c" onclick="show_slide_detail('257')">초코 티라미수</a></p>
    </div>
    <div class="carousel-item">
  		<a href="#c" class="sw1" onclick="show_slide_detail('257')">
			<span class=swon><img src="../images/common/best_icon.png" alt="new"></span>
			<img src="../images/product/bread/IMG_1527143944548.png" alt="name2">
		</a>
	<p><a class="sw2" href="#c" onclick="show_slide_detail('257')">name2</a></p>
    </div>
    <div class="carousel-item">
  		<a href="#c" class="sw1" onclick="show_slide_detail('257')">
			<span class="swon"><img src="../images/common/best_icon.png" alt="new"></span>
			<img src="../images/product/bread/IMG_1527143944548.png" alt="name3">
		</a>
	<p><a class="sw2" href="#c" onclick="show_slide_detail('257')">name3</a></p>
    </div>
  </div>
 </div>
</div>
</body>
</html>