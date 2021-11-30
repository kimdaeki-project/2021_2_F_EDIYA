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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
  
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
      			
	<!-- //제품 상세 Popup -->
	<div id="demo" class="carousel slide" data-bs-ride="carousel">
  
  	<!-- The slideshow/carousel -->
  	<div class="new_pro">
  	
  	<div class="carousel-inner">
  	<div class="carousel-item active">
  		<a href="#c" onclick="show_slide_detail('257')">
			<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
			<img src="../images/product/bread/IMG_1527143944548.png" alt="초코 티라미수">
		</a>
	<p><a href="#c" onclick="show_slide_detail('257')">초코 티라미수</a></p>
    </div>
    <c:forEach items="${star}" var="star">
		<div class="carousel-item" style="float: none; list-style: none; position: relative; width: 393px;">	
			<a href="#c" onclick="show_slide_detail('257')">
			<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
			<img src="../images/product/bread/IMG_${star.pdImg}.png">
			</a>
			<p><a href="#c" onclick="show_slide_detail('257')">${star.pdNameK}</a></p>
		</div>
	</c:forEach>
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
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
        			</div>
      			</div>
      			
      			

		<div class="con_align">
			<input type="hidden" id="menu_page" value="2">
      		<ul id="menu_ul">
      			<li>
      			<c:forEach items="${bread}" var="bread">
      				<div class="pro_detail" style="display:none;" id="${bread.pdNum}">
      					<div class="detail_con">
      						<h2>${bread.pdNameK}<span>${bread.pdNameE}</span></h2>
      						<div class="detail_close"><a onClick="name1(${bread.pdNum})"><img src="../../images/menu/pro_detail_close.gif" width="17" height="16" alt="창닫기"></a></div>
                  				<p>${bread.pdInfo}</p>
                			</div> 
							<div class="pro_comp">
	        					<div class="pro_nutri">
									<dl><dt> 칼로리 : </dt><dd>${bread.pdC}</dd></dl>							
									<dl><dt> 당류 : </dt><dd>${bread.pdS}</dd></dl>							
									<dl><dt> 단백질 : </dt><dd>${bread.pdP}</dd></dl>							
									<dl><dt> 포화지방 : </dt><dd>${bread.pdF}</dd></dl>							
									<dl><dt> 나트륨 : </dt><dd>${bread.pdN}</dd></dl>							
								</div>
								<div class="pro_allergy">알러르기 정보 : ${bread.pdAllergy}</div>
								</div>				
              			</div>
	              		<a href="#" onClick="name1(${bread.pdNum})"><img src="../images/product/bread/IMG_${bread.pdImg}.png"><span class="setting1">${bread.pdNameK}</span></a>
              		</c:forEach>
            		</li>
      			</ul>
      		</div>

      			
      			<div class="block_hot">
      				<div class="con_align">
						<input type="hidden" id="menu_page" value="2">
          				
         			 	<div class="con_btn">
           			 		<a class="line_btn" onclick="show_more()" style="cursor:pointer">더보기<span>+</span></a>
          				</div>
        			</div>
      			</div>
      			
      			
				
				
				<!-- <a href="#" class="arrow_right"><img src="../images/common/new_btn_arrow02.gif" alt="오른쪽으로"/></a> -->
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