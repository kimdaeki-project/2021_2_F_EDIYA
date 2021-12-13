<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>EDIYA COFFEE</title>
	
	<!-- bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="../css/index.css">
	<link rel="stylesheet" type="text/css" href="../css/common/common.css">

	<!-- 페이지 css -->
	<link rel="stylesheet" type="text/css" href="../css/product/animate.css">
	<link rel="stylesheet" type="text/css" href="../css/product/ediya_2017_member.css">
	<link rel="stylesheet" type="text/css" href="../css/product/ediya_2017_style.css">
	<link rel="stylesheet" type="text/css" href="../css/product/ediya_2018_festa_v180912.css">
	<link rel="stylesheet" type="text/css" href="../css/product/fonts.css">
	<link rel="stylesheet" type="text/css" href="../css/product/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="../css/product/product.bxslider.css">
	<link rel="stylesheet" type="text/css" href="../css/product/swiper.css">
	
	<link rel="stylesheet" type="text/css" href="../css/product/commons.css">
	<link rel="stylesheet" type="text/css" href="../css/product/smaple.css">
	
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
		
<!-- 상품 -->
<div class="block_new ">
	<div class="con_align">
		<h3 class="nunito">추천 상품</h3>
		<div class="new_pro">
    
    <!-- 제품 상세 Popup -->
	<div id="demo" class="carousel slide" data-bs-ride="carousel">
	
  	<div class="carousel-inner sto">
  	<div class="sto1">
  	<div class="carousel-item active">
  		<a href="#c" class="sw1">
			<span class="swon"><img src="../images/common/best_icon.png" alt="new"></span>
			<img src="../images/product/bread/IMG_1527143944548.png" alt="초코 티라미수">
		</a>
	<p><a class="sw2" href="#c">초코 티라미수</a></p>
    </div>
    <c:forEach items="${star}" var="star">
		<div class="carousel-item">	
			<a href="#c" class="sw1">
			<span><img class="swon" src="../images/common/best_icon.png" alt="new"></span>
			<img src="../images/product/bread/IMG_${star.pdImg}.png">
			</a>
			<p><a class="sw2" href="#c">${star.pdNameK}</a></p>
		</div>
	</c:forEach>
	</div>
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
		<div class="block_cate" id="blockcate">
			<div class="con_align">
				<div class="menu_sch">
				<h4>메뉴 검색</h4>
				<div class="search_bar">
					<input type="text" class="sch_txt" name="keyword" id="skeyword" value=""><button onclick="search_keyword()"></button>
				</div>
		
	<!-- 메뉴 검색 -->
		<ul>
			<li><input type="checkbox" name="chkList" id="BREAD" value="17" onclick="change_cate()"><label for="BREAD">BREAD</label></li>
			<li><input type="checkbox" name="chkList" id="DESSERT" value="18" onclick="change_cate()"><label for="DESSERT">DESSERT</label></li>
			<li><input type="checkbox" name="chkList" id="COOKIE &amp; ETC" value="19" onclick="change_cate()"><label for="COOKIE &amp; ETC">COOKIE &amp; ETC</label></li>
		</ul>
	</div>
</div></div>      			
      			

<div class="listfirst">    			
<div class="lists">
	<input type="hidden" id="menu_page" value="2">
     <ul class="listsul">
     	<c:forEach items="${bread}" var="bread">
      	<li class="listsli">
      		<div class="list1" id="${bread.pdNum}">
      		<div class="list2">
      			<h2 style="display:none" id="NK${bread.pdNum}">${bread.pdNameK}</h2>
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
      			<dl class="dl2"><dt class="dt"> 가격 : </dt><dd class="dd">${bread.pdPrice} 원</dd></dl>
      		</div>
      		<button type="button" class="pas" id="pas${bread.pdNum}">장바구니 담기</button>
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
	</div>		
</div>
</div>
	
	</section>
	
	<c:import url="../temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->



<!-- Script -->
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript" src="../js/product/list.js"></script>

</body>
</html>