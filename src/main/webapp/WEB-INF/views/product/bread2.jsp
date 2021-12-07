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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<h1 class="cname">sample</h1>     			
<div class="listfirst">    			
<div class="lists">
	<input type="hidden" id="menu_page" value="2">
     <ul class="listsul">
     	<c:forEach items="${bread}" var="bread">
      	<li class="listsli">
      		<div class="list1" id="${bread.pdNum}">
      		<div class="list2">
      			<h2 class="list3">${bread.pdNameK}<span class="list4">${bread.pdNameE}</span></h2>
      			<div class="list5"><a class="list6" onClick="name1(${bread.pdNum})"><img class="list7" src="../../images/menu/pro_detail_close.gif" alt="창닫기"></a></div>
      			<p class="list8">${bread.pdInfo}</p>
      		</div> 
      		<div class="list9">
      		<div class="list10">
      			<dl class="dl1"><dt class="dt"> 칼로리 : </dt><dd class="dd">${bread.pdC}</dd></dl>	
      			<dl class="dl2"><dt class="dt"> 당류 : </dt><dd class="dd">${bread.pdS}</dd></dl>							
      			<dl class="dl1"><dt class="dt"> 단백질 : </dt><dd class="dd">${bread.pdP}</dd></dl>
      			<dl class="dl2"><dt class="dt"> 포화지방 : </dt><dd class="dd">${bread.pdF}</dd></dl>
      			<dl class="dl1"><dt class="dt"> 나트륨 : </dt><dd class="dd">${bread.pdN}</dd></dl>
      		</div>
      		<button type="button" onclick="">장바구니 담기</button>
      		</div>
            </div>
            <a href="#" onClick="name1(${bread.pdNum})" class="list11"><img class="listimg" src="../images/product/bread/IMG_${bread.pdImg}.png"><span class="listspan">${bread.pdNameK}</span></a>
           </li>
           </c:forEach>
         </ul>
      	</div>
      </div>

      			
      	<div class="block_hot">
      		<div class="con_align">
			<input type="hidden" id="menu_page" value="2">
          		<div class="con_btn">
          			<a class="line_btn" onclick="more" style="cursor:pointer">더보기<span>+</span></a>
          		</div>
        	</div>
      	</div>
      	
      	<script type="text/javascript" src="../js/product/list.js"></script>
</body>
</html>