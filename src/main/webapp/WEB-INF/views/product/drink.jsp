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
</head>
<body>
<!-- Start -->
	<div id="wrapper">
	
	<c:import url="../temp_common/header.jsp"></c:import>
	
	<section id="container">
	
	<div class="sub_visual drink_visual">
    	<h1 class="con_tt">음료</h1>
    	<p class="menu_txt">ALWAYS BESIDE YOU, <strong>EDIYA COFFEE</strong></p>
    </div>
  <!-- LNB 영역입니다. -->
  	<ul class="lnb">
    	<!--li와 li Enter 하지 마시오!! -->
		<!-- class="on" 메뉴 활성화 -->
		<li class="on"><a href="/contents/drink.html">음료</a></li><li><a href="/contents/bakery.html">베이커리</a></li><li><a href="/contents/ediya_bean.html">원두</a></li>    </ul>  <!-- //LNB 영역입니다. -->
    <!-- Contents 영역 -->
      <div class="location"><span>HOME</span><span>메뉴</span>음료</div>
			<!-- 제품 상세정보 추가 200327 -->

<div class="block_new ">
	<div class="con_align">
		<h3 class="nunito">추천 상품</h3>
		<div class="new_pro">
    	<!-- 제품 상세 Popup -->
      <div class="pro_detail " id="new_pro_detail" style="display:none;">
      	<div class="detail_con">
        	<h2 id="new_pro_detail_h2">카페 아메리카노
          <span>Caffe Americano</span></h2>
          <div class="detail_close"><a href="#c" onclick="hide_slide_detail()"><img src="../images/menu/pro_detail_close.gif" width="17" height="16" alt="창닫기"></a></div>
          <p id="new_pro_detail_con">이디야의 스모키한 맛과 풍부한 바디감을 느낄 수 있는 이디야 대표 음료</p>
        </div>
                
      	<div class="pro_comp" id="new_pro_detail_nutri">
        	<!--div pro_nutri 추가 180327-->
          <div class="pro_nutri">
            <dl>
              <dt>칼로리</dt>
              <dd>(12kal)</dd>
            </dl>
            <dl>
              <dt>포화지방</dt>
              <dd>(12kal)</dd>
            </dl>
            <dl>
              <dt>당류</dt>
              <dd>(0g)</dd>
            </dl>
            <dl>
              <dt>나트륨</dt>
              <dd>(2mg)</dd>
            </dl>
            <dl>
              <dt>단백질</dt>
              <dd>(20g)</dd>
            </dl>
            <dl>
              <dt>카페인</dt>
              <dd>(22mg)</dd>
            </dl>
          </div> 
          <!--//div pro_nutri 추가 180327-->
      	  <!--알레르기 추가 180327-->
          <div class="pro_allergy">알레르기 유발요인: 계란, 우유, 대두, 밀, 쇠고기, 닭고기 함유</div>
         <!--//알레르기 추가 180327--> 
      	</div>
      </div>
      <!-- //제품 상세 Popup -->
    
			<!--a href="#" class="arrow_left"><img src="../images/common/new_btn_arrow01.gif" alt="왼쪽으로"/></a-->
			<div class="bx-wrapper" style="max-width: 1179px;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 363px;"><ul class="pro_n bxSlider" style="width: 29215%; position: relative; transition-duration: 0s; transform: translate3d(-785.993px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('184')"><span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1523869208680.png" alt="콜드브루 니트로"></a>
						<p><a href="#c" onclick="show_slide_detail('184')">콜드브루 니트로</a></p>
				</li><li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('238')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1511829699286.png" alt="제주청귤 블라썸"></a>
						<p><a href="#c" onclick="show_slide_detail('238')">제주청귤 블라썸</a></p>
				</li><li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('240')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1511829751169.png" alt="석류 애플라임"></a>
						<p><a href="#c" onclick="show_slide_detail('240')">석류 애플라임</a></p>
				</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="false">
						<a href="#c" onclick="show_slide_detail('488')"><span class="new_icon"><img src="/images/common/new_icon.png" alt="new"></span><img src="/files/menu/IMG_1636962593224.png" alt="ICED 복분자 뱅쇼 콤부차 "></a>
						<p><a href="#c" onclick="show_slide_detail('488')">ICED 복분자 뱅쇼 콤부차 </a></p>
				</li>
								<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="false">
						<a href="#c" onclick="show_slide_detail('320')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1564379279645.png" alt="이디야 콤부차 복숭아망고"></a>
						<p><a href="#c" onclick="show_slide_detail('320')">이디야 콤부차 복숭아망고</a></p>
				</li>
								<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('321')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1564379353475.png" alt="이디야 콤부차 청포도레몬"></a>
						<p><a href="#c" onclick="show_slide_detail('321')">이디야 콤부차 청포도레몬</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('352')"><span class="new_icon"><img src="/images/common/new_icon.png" alt="new"></span><img src="/files/menu/IMG_1584942100701.png" alt="ICED디카페인 콜드브루 아메리카노 "></a>
						<p><a href="#c" onclick="show_slide_detail('352')">ICED디카페인 콜드브루 아메리카노 </a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('353')"><span class="new_icon"><img src="/images/common/new_icon.png" alt="new"></span><img src="/files/menu/IMG_1584944055215.png" alt="ICED디카페인 콜드브루 라떼"></a>
						<p><a href="#c" onclick="show_slide_detail('353')">ICED디카페인 콜드브루 라떼</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('356')"><span class="new_icon"><img src="/images/common/new_icon.png" alt="new"></span><img src="/files/menu/IMG_1584945139538.png" alt="ICED디카페인 흑당 콜드브루 "></a>
						<p><a href="#c" onclick="show_slide_detail('356')">ICED디카페인 흑당 콜드브루 </a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('357')"><span class="new_icon"><img src="/images/common/new_icon.png" alt="new"></span><img src="/files/menu/IMG_1585298262644.png" alt="(EX)ICED디카페인 흑당 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('357')">(EX)ICED디카페인 흑당 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('358')"><span class="new_icon"><img src="/images/common/new_icon.png" alt="new"></span><img src="/files/menu/IMG_1584945456727.png" alt="ICED디카페인 연유 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('358')">ICED디카페인 연유 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('360')"><span class="new_icon"><img src="/images/common/new_icon.png" alt="new"></span><img src="/files/menu/IMG_1584945941218.png" alt="ICED디카페인 콜드브루 크림넛"></a>
						<p><a href="#c" onclick="show_slide_detail('360')">ICED디카페인 콜드브루 크림넛</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('362')"><span class="new_icon"><img src="/images/common/new_icon.png" alt="new"></span><img src="/files/menu/IMG_1585298211635.png" alt="(EX)ICED디카페인 버블 흑당 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('362')">(EX)ICED디카페인 버블 흑당 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('309')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563238180331.png" alt="흑당 라떼"></a>
						<p><a href="#c" onclick="show_slide_detail('309')">흑당 라떼</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('310')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563238936785.png" alt="(EX)흑당 라떼"></a>
						<p><a href="#c" onclick="show_slide_detail('310')">(EX)흑당 라떼</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('311')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563239291456.png" alt="ICED흑당 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('311')">ICED흑당 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('312')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563241039133.png" alt="(EX)ICED흑당 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('312')">(EX)ICED흑당 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('313')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563242110490.png" alt="버블 흑당 라떼"></a>
						<p><a href="#c" onclick="show_slide_detail('313')">버블 흑당 라떼</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('314')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563250399596.png" alt="(EX)버블 흑당 라떼"></a>
						<p><a href="#c" onclick="show_slide_detail('314')">(EX)버블 흑당 라떼</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('315')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563250718130.png" alt="ICED버블 흑당 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('315')">ICED버블 흑당 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('316')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563250807738.png" alt="(EX)ICED버블 흑당 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('316')">(EX)ICED버블 흑당 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('333')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1569485085454.png" alt="ICED연유 카페라떼 "></a>
						<p><a href="#c" onclick="show_slide_detail('333')">ICED연유 카페라떼 </a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('332')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1569484383380.png" alt="HOT연유 카페라떼 "></a>
						<p><a href="#c" onclick="show_slide_detail('332')">HOT연유 카페라떼 </a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('334')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1569485171449.png" alt="ICED연유 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('334')">ICED연유 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('297')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1558502162288.png" alt="ICED콜드브루 아메리카노"></a>
						<p><a href="#c" onclick="show_slide_detail('297')">ICED콜드브루 아메리카노</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('266')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1529902646309.png" alt="(EX)ICED 유자피나콜라다"></a>
						<p><a href="#c" onclick="show_slide_detail('266')">(EX)ICED 유자피나콜라다</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('250')"><span class="new_icon"><img src="/images/common/new_icon.png" alt="new"></span><img src="/files/menu/IMG_1524707533812.png" alt="꿀복숭아 플랫치노"></a>
						<p><a href="#c" onclick="show_slide_detail('250')">꿀복숭아 플랫치노</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('248')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1523925474425.png" alt="ICED콜드브루 라떼"></a>
						<p><a href="#c" onclick="show_slide_detail('248')">ICED콜드브루 라떼</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('249')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1523925480622.png" alt="ICED콜드브루 화이트 비엔나"></a>
						<p><a href="#c" onclick="show_slide_detail('249')">ICED콜드브루 화이트 비엔나</a></p>
				</li>
								<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('184')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1523869208680.png" alt="콜드브루 니트로"></a>
						<p><a href="#c" onclick="show_slide_detail('184')">콜드브루 니트로</a></p>
				</li>
								<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('238')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1511829699286.png" alt="제주청귤 블라썸"></a>
						<p><a href="#c" onclick="show_slide_detail('238')">제주청귤 블라썸</a></p>
				</li>
								<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('240')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1511829751169.png" alt="석류 애플라임"></a>
						<p><a href="#c" onclick="show_slide_detail('240')">석류 애플라임</a></p>
				</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('488')"><span class="new_icon"><img src="/images/common/new_icon.png" alt="new"></span><img src="/files/menu/IMG_1636962593224.png" alt="ICED 복분자 뱅쇼 콤부차 "></a>
						<p><a href="#c" onclick="show_slide_detail('488')">ICED 복분자 뱅쇼 콤부차 </a></p>
				</li><li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('320')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1564379279645.png" alt="이디야 콤부차 복숭아망고"></a>
						<p><a href="#c" onclick="show_slide_detail('320')">이디야 콤부차 복숭아망고</a></p>
				</li><li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('321')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1564379353475.png" alt="이디야 콤부차 청포도레몬"></a>
						<p><a href="#c" onclick="show_slide_detail('321')">이디야 콤부차 청포도레몬</a></p>
				</li></ul></div><div class="bx-controls bx-has-controls-direction"><div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div></div></div>
			<!--a href="#" class="arrow_right"><img src="../images/common/new_btn_arrow02.gif" alt="오른쪽으로"/></a-->
		</div>		
	</div>
</div>		
 <!-- 메뉴 카테고리 추가 171215 -->
      <div class="block_cate" id="blockcate">
      	<div class="con_align">
			<div class="menu_sch">
				<h4>메뉴 검색</h4>
				<div class="search_bar">
					<input type="text" class="sch_txt" name="keyword" id="skeyword" value=""><button onclick="search_keyword()"></button>
				</div>
				
          <ul>
			          	<!-- <li><input type="checkbox"  name="chkList" id="all"  value="all" onclick="change_cate()"  /> <label for="all">전체</label></li>  -->
								<li><input type="checkbox" name="chkList" id="COFFEE" value="12" onclick="change_cate()"> <label for="COFFEE">COFFEE</label></li>
								<li><input type="checkbox" name="chkList" id="BEVERAGE" value="13" onclick="change_cate()"> <label for="BEVERAGE">BEVERAGE</label></li>
								<li><input type="checkbox" name="chkList" id="BLENDING TEA" value="14" onclick="change_cate()"> <label for="BLENDING TEA">BLENDING TEA</label></li>
								<li><input type="checkbox" name="chkList" id="FLATCCINO" value="15" onclick="change_cate()"> <label for="FLATCCINO">FLATCCINO</label></li>
								<li><input type="checkbox" name="chkList" id="SHAKE &amp; ADE" value="16" onclick="change_cate()"> <label for="SHAKE &amp; ADE">SHAKE &amp; ADE</label></li>
								<li><input type="checkbox" name="chkList" id="ICE FLAKES" value="71" onclick="change_cate()"> <label for="ICE FLAKES">ICE FLAKES</label></li>
								<li><input type="checkbox" name="chkList" id="RTD" value="83" onclick="change_cate()"> <label for="RTD">RTD</label></li>
			          </ul>
			</div>
        </div>
      </div>
      <!-- //메뉴 카테고리 추가 171215 -->		
			
			
      <div class="block_hot">
      	<div class="con_align">
			<input type="hidden" id="menu_page" value="2">
          <ul id="menu_ul">
			            <li>
            	<div class="pro_detail" style="display:none; " id="nutri_486">
              	<div class="detail_con">
                	<h2>ICED 복분자 뱅쇼                  <span>ICED Bokbunja Vin Chaud</span></h2>
                  <div class="detail_close"><a href="#c" onclick="hide_nutri('486')"><img src="/images/menu/pro_detail_close.gif" width="17" height="16" alt="창닫기"></a></div>
                  <p>복분자에 다양한 과일을 믹스해 달콤함과 아이니함을 극대화 한 음료로 블랙베리, 크랜베리, 오렌지와 함께 과일의 향미과 풍부함까지 즐길 수 있는 음료</p>
                </div>
                
                <div class="detail_sns"><!-- 
                	<a href="#c"><img src="../images/menu/pro_sns01.png" width="26" height="26" alt="페이스북" /></a>
                  <a href="#c"><img src="../images/menu/pro_sns02.png" width="26" height="26" alt="인스타그램" /></a> -->
                </div> 
				<div class="pro_comp">
        			<!--pro_nutri div추가 180327-->
        			<div class="pro_nutri">
											<dl>
						<dt>칼로리</dt>
						<dd>(187kcal)</dd>
						</dl>							
											<dl>
						<dt> 당류</dt>
						<dd>(42g)</dd>
						</dl>							
											<dl>
						<dt> 단백질</dt>
						<dd>(0g)</dd>
						</dl>							
											<dl>
						<dt> 포화지방</dt>
						<dd>(0g)</dd>
						</dl>							
											<dl>
						<dt> 나트륨</dt>
						<dd>(50mg)</dd>
						</dl>							
											<dl>
						<dt> 카페인</dt>
						<dd>(0mg)</dd>
						</dl>							
										</div>
         	 		<!--//pro_nutri div추가 180327-->					
										<!--알레르기 추가 180327-->
					<div class="pro_allergy">알레르기 성분 정보 : 아황산류</div>
					<!--//알레르기 추가 180327-->
					                </div>
              </div>              
              <a href="#c" onclick="show_nutri('486')"><img src="/files/menu/IMG_1636959891281.png" alt="">
              <span>ICED 복분자 뱅쇼</span></a>
            </li>
			            <li>
            	<div class="pro_detail" style="display:none; " id="nutri_487">
              	<div class="detail_con">
                	<h2>HOT 복분자 뱅쇼                  <span>Bokbunja Vin Chaud</span></h2>
                  <div class="detail_close"><a href="#c" onclick="hide_nutri('487')"><img src="/images/menu/pro_detail_close.gif" width="17" height="16" alt="창닫기"></a></div>
                  <p>복분자에 다양한 과일을 믹스해 달콤함과 아이니함을 극대화 한 음료로 블랙베리, 크랜베리, 오렌지와 함께 과일의 향미과 풍부함까지 즐길 수 있는 음료</p>
                </div>
                
                <div class="detail_sns"><!-- 
                	<a href="#c"><img src="../images/menu/pro_sns01.png" width="26" height="26" alt="페이스북" /></a>
                  <a href="#c"><img src="../images/menu/pro_sns02.png" width="26" height="26" alt="인스타그램" /></a> -->
                </div> 
				<div class="pro_comp">
        			<!--pro_nutri div추가 180327-->
        			<div class="pro_nutri">
											<dl>
						<dt>칼로리</dt>
						<dd>(187kcal)</dd>
						</dl>							
											<dl>
						<dt> 당류</dt>
						<dd>(42g)</dd>
						</dl>							
											<dl>
						<dt> 단백질</dt>
						<dd>(0g)</dd>
						</dl>							
											<dl>
						<dt> 포화지방</dt>
						<dd>(0g)</dd>
						</dl>							
											<dl>
						<dt> 나트륨</dt>
						<dd>(50mg)</dd>
						</dl>							
											<dl>
						<dt> 카페인</dt>
						<dd>(0mg)</dd>
						</dl>							
										</div>
         	 		<!--//pro_nutri div추가 180327-->					
										<!--알레르기 추가 180327-->
					<div class="pro_allergy">알레르기 성분 정보 : 아황산류</div>
					<!--//알레르기 추가 180327-->
					                </div>
              </div>              
              <a href="#c" onclick="show_nutri('487')"><img src="/files/menu/IMG_1636962431152.png" alt="">
              <span>HOT 복분자 뱅쇼</span></a>
            </li>
			            <li>
            	<div class="pro_detail" style="display:none; " id="nutri_488">
              	<div class="detail_con">
                	<h2>ICED 복분자 뱅쇼 콤부차                   <span>ICED Bokbunja Vin Chaud Kombucha</span></h2>
                  <div class="detail_close"><a href="#c" onclick="hide_nutri('488')"><img src="/images/menu/pro_detail_close.gif" width="17" height="16" alt="창닫기"></a></div>
                  <p>뱅쇼에 이디야만의 콤부차를 더해 새콤함과 청량감을 동시에 느낄 수 있는 음료로 블랙베리, 크랜베리, 오렌지와 함께 과일의 향미와 풍부함까지 즐길 수 있는 음료</p>
                </div>
                
                <div class="detail_sns"><!-- 
                	<a href="#c"><img src="../images/menu/pro_sns01.png" width="26" height="26" alt="페이스북" /></a>
                  <a href="#c"><img src="../images/menu/pro_sns02.png" width="26" height="26" alt="인스타그램" /></a> -->
                </div> 
				<div class="pro_comp">
        			<!--pro_nutri div추가 180327-->
        			<div class="pro_nutri">
											<dl>
						<dt>칼로리</dt>
						<dd>(147kcal)</dd>
						</dl>							
											<dl>
						<dt> 당류</dt>
						<dd>(29g)</dd>
						</dl>							
											<dl>
						<dt> 단백질</dt>
						<dd>(0g)</dd>
						</dl>							
											<dl>
						<dt> 포화지방</dt>
						<dd>(0g)</dd>
						</dl>							
											<dl>
						<dt> 나트륨</dt>
						<dd>(355mg)</dd>
						</dl>							
											<dl>
						<dt> 카페인</dt>
						<dd>(2mg)</dd>
						</dl>							
										</div>
         	 		<!--//pro_nutri div추가 180327-->					
										<!--알레르기 추가 180327-->
					<div class="pro_allergy">알레르기 성분 정보 : 우유, 대두, 아황산류</div>
					<!--//알레르기 추가 180327-->
					                </div>
              </div>              
              <a href="#c" onclick="show_nutri('488')"><img src="/files/menu/IMG_1636962593224.png" alt="">
              <span>ICED 복분자 뱅쇼 콤부차 </span></a>
            </li>
			            <li>
            	<div class="pro_detail" style="display:none; " id="nutri_476">
              	<div class="detail_con">
                	<h2>HOT더블 토피넛 라떼                  <span>Double Toffee Nut Latte</span></h2>
                  <div class="detail_close"><a href="#c" onclick="hide_nutri('476')"><img src="/images/menu/pro_detail_close.gif" width="17" height="16" alt="창닫기"></a></div>
                  <p>토피넛 파우더와 마카다미아향이 어우러져 고소하고 다콤한 음료와 아몬드 브리틀의 바삭한 식감을 즐길 수 있는 음료</p>
                </div>
                
                <div class="detail_sns"><!-- 
                	<a href="#c"><img src="../images/menu/pro_sns01.png" width="26" height="26" alt="페이스북" /></a>
                  <a href="#c"><img src="../images/menu/pro_sns02.png" width="26" height="26" alt="인스타그램" /></a> -->
                </div> 
				<div class="pro_comp">
        			<!--pro_nutri div추가 180327-->
        			<div class="pro_nutri">
											<dl>
						<dt>칼로리</dt>
						<dd>(508kcal)</dd>
						</dl>							
											<dl>
						<dt> 당류</dt>
						<dd>(47g)</dd>
						</dl>							
											<dl>
						<dt> 단백질</dt>
						<dd>(8g)</dd>
						</dl>							
											<dl>
						<dt> 포화지방</dt>
						<dd>(21g)</dd>
						</dl>							
											<dl>
						<dt> 나트륨</dt>
						<dd>(276mg)</dd>
						</dl>							
											<dl>
						<dt> 카페인</dt>
						<dd>(19mg)</dd>
						</dl>							
										</div>
         	 		<!--//pro_nutri div추가 180327-->					
										<!--알레르기 추가 180327-->
					<div class="pro_allergy">알레르기 성분 정보 : 우유, 대두, 아황산류</div>
					<!--//알레르기 추가 180327-->
					                </div>
              </div>              
              <a href="#c" onclick="show_nutri('476')"><img src="/files/menu/IMG_1633587316307.png" alt="">
              <span>HOT더블 토피넛 라떼</span></a>
            </li>
			            <li>
            	<div class="pro_detail" style="display:none; " id="nutri_477">
              	<div class="detail_con">
                	<h2>ICED더블 토피넛 라떼                  <span>ICED Double Toffee Nut Latte</span></h2>
                  <div class="detail_close"><a href="#c" onclick="hide_nutri('477')"><img src="/images/menu/pro_detail_close.gif" width="17" height="16" alt="창닫기"></a></div>
                  <p>토피넛 파우더와 마카다미아향이 어우러져 고소하고 달콤한 음료와 아몬드 브리틀의 바삭한 식감을 즐길 수 있는 음료</p>
                </div>
                
                <div class="detail_sns"><!-- 
                	<a href="#c"><img src="../images/menu/pro_sns01.png" width="26" height="26" alt="페이스북" /></a>
                  <a href="#c"><img src="../images/menu/pro_sns02.png" width="26" height="26" alt="인스타그램" /></a> -->
                </div> 
				<div class="pro_comp">
        			<!--pro_nutri div추가 180327-->
        			<div class="pro_nutri">
											<dl>
						<dt>칼로리</dt>
						<dd>(467kcal)</dd>
						</dl>							
											<dl>
						<dt> 당류</dt>
						<dd>(44g)</dd>
						</dl>							
											<dl>
						<dt> 단백질</dt>
						<dd>(6g)</dd>
						</dl>							
											<dl>
						<dt> 포화지방</dt>
						<dd>(24g)</dd>
						</dl>							
											<dl>
						<dt> 나트륨</dt>
						<dd>(244mg)</dd>
						</dl>							
											<dl>
						<dt> 카페인</dt>
						<dd>(19mg)</dd>
						</dl>							
										</div>
         	 		<!--//pro_nutri div추가 180327-->					
										<!--알레르기 추가 180327-->
					<div class="pro_allergy">알레르기 성분 정보 : 우유, 대두, 아황산류</div>
					<!--//알레르기 추가 180327-->
					                </div>
              </div>              
              <a href="#c" onclick="show_nutri('477')"><img src="/files/menu/IMG_1633587757261.png" alt="">
              <span>ICED더블 토피넛 라떼</span></a>
            </li>
			            <li>
            	<div class="pro_detail" style="display:none; " id="nutri_478">
              	<div class="detail_con">
                	<h2>HOT더블 토피넛 위드샷                  <span>Double Toffee Nut with Espresso</span></h2>
                  <div class="detail_close"><a href="#c" onclick="hide_nutri('478')"><img src="/images/menu/pro_detail_close.gif" width="17" height="16" alt="창닫기"></a></div>
                  <p>토피넛 파우더와 마카다미아향에 이디야 블렌드 에스프레소의 깊은 풍미가 더해진 달콤한 음료와 아몬드 브리틀의 바삭한 식감을 즐길 수 있는 커피 음료</p>
                </div>
                
                <div class="detail_sns"><!-- 
                	<a href="#c"><img src="../images/menu/pro_sns01.png" width="26" height="26" alt="페이스북" /></a>
                  <a href="#c"><img src="../images/menu/pro_sns02.png" width="26" height="26" alt="인스타그램" /></a> -->
                </div> 
				<div class="pro_comp">
        			<!--pro_nutri div추가 180327-->
        			<div class="pro_nutri">
											<dl>
						<dt>칼로리</dt>
						<dd>(495kcal)</dd>
						</dl>							
											<dl>
						<dt> 당류</dt>
						<dd>(45g)</dd>
						</dl>							
											<dl>
						<dt> 단백질</dt>
						<dd>(8g)</dd>
						</dl>							
											<dl>
						<dt> 포화지방</dt>
						<dd>(20g)</dd>
						</dl>							
											<dl>
						<dt> 나트륨</dt>
						<dd>(261mg)</dd>
						</dl>							
											<dl>
						<dt> 카페인</dt>
						<dd>(96mg)</dd>
						</dl>							
										</div>
         	 		<!--//pro_nutri div추가 180327-->					
										<!--알레르기 추가 180327-->
					<div class="pro_allergy">알레르기 성분 정보 : 우유, 대두, 아황산류</div>
					<!--//알레르기 추가 180327-->
					                </div>
              </div>              
              <a href="#c" onclick="show_nutri('478')"><img src="/files/menu/IMG_1633587910279.png" alt="">
              <span>HOT더블 토피넛 위드샷</span></a>
            </li>
			            <li>
            	<div class="pro_detail" style="display:none; " id="nutri_479">
              	<div class="detail_con">
                	<h2>ICED더블 토피넛 위드샷                  <span>ICED Double Toffee Nut with Espresso</span></h2>
                  <div class="detail_close"><a href="#c" onclick="hide_nutri('479')"><img src="/images/menu/pro_detail_close.gif" width="17" height="16" alt="창닫기"></a></div>
                  <p>토피넛 파우더와 마카다미아향에 이디야 블렌드 에스프레소의 깊은 풍미가 더해진 달콤한 음료와 아몬드 브리틀의 바삭한 식감을 즐길 수 있는 커피 음료</p>
                </div>
                
                <div class="detail_sns"><!-- 
                	<a href="#c"><img src="../images/menu/pro_sns01.png" width="26" height="26" alt="페이스북" /></a>
                  <a href="#c"><img src="../images/menu/pro_sns02.png" width="26" height="26" alt="인스타그램" /></a> -->
                </div> 
				<div class="pro_comp">
        			<!--pro_nutri div추가 180327-->
        			<div class="pro_nutri">
											<dl>
						<dt>칼로리</dt>
						<dd>(451kcal)</dd>
						</dl>							
											<dl>
						<dt> 당류</dt>
						<dd>(42g)</dd>
						</dl>							
											<dl>
						<dt> 단백질</dt>
						<dd>(6g)</dd>
						</dl>							
											<dl>
						<dt> 포화지방</dt>
						<dd>(19g)</dd>
						</dl>							
											<dl>
						<dt> 나트륨</dt>
						<dd>(226mg)</dd>
						</dl>							
											<dl>
						<dt> 카페인</dt>
						<dd>(96mg)</dd>
						</dl>							
										</div>
         	 		<!--//pro_nutri div추가 180327-->					
										<!--알레르기 추가 180327-->
					<div class="pro_allergy">알레르기 성분 정보 : 우유, 대두, 아황산류</div>
					<!--//알레르기 추가 180327-->
					                </div>
              </div>              
              <a href="#c" onclick="show_nutri('479')"><img src="/files/menu/IMG_1633588069743.png" alt="">
              <span>ICED더블 토피넛 위드샷</span></a>
            </li>
			            <li>
            	<div class="pro_detail" style="display:none; " id="nutri_480">
              	<div class="detail_con">
                	<h2>토피넛 플랫치노                  <span>Toffee Nut Flatccino</span></h2>
                  <div class="detail_close"><a href="#c" onclick="hide_nutri('480')"><img src="/images/menu/pro_detail_close.gif" width="17" height="16" alt="창닫기"></a></div>
                  <p>토피넛의 맛을 연유와 헤이즐넛향이 더욱 풍부하게 만들어줘 달콤한 휘핑과 아몬드 브리틀을 함께 즐길 수 있는 음료</p>
                </div>
                
                <div class="detail_sns"><!-- 
                	<a href="#c"><img src="../images/menu/pro_sns01.png" width="26" height="26" alt="페이스북" /></a>
                  <a href="#c"><img src="../images/menu/pro_sns02.png" width="26" height="26" alt="인스타그램" /></a> -->
                </div> 
				<div class="pro_comp">
        			<!--pro_nutri div추가 180327-->
        			<div class="pro_nutri">
											<dl>
						<dt>칼로리</dt>
						<dd>(531kcal)</dd>
						</dl>							
											<dl>
						<dt> 당류</dt>
						<dd>(61g)</dd>
						</dl>							
											<dl>
						<dt> 단백질</dt>
						<dd>(6g)</dd>
						</dl>							
											<dl>
						<dt> 포화지방</dt>
						<dd>(19g)</dd>
						</dl>							
											<dl>
						<dt> 나트륨</dt>
						<dd>(247mg)</dd>
						</dl>							
											<dl>
						<dt> 카페인</dt>
						<dd>(19mg)</dd>
						</dl>							
										</div>
         	 		<!--//pro_nutri div추가 180327-->					
										<!--알레르기 추가 180327-->
					<div class="pro_allergy">알레르기 성분 정보 : 우유, 대두</div>
					<!--//알레르기 추가 180327-->
					                </div>
              </div>              
              <a href="#c" onclick="show_nutri('480')"><img src="/files/menu/IMG_1633588046796.png" alt="">
              <span>토피넛 플랫치노</span></a>
            </li>
			          </ul>
          <div class="con_btn">
            <a class="line_btn" onclick="show_more()" style="cursor:pointer">더보기<span>+</span></a>
          </div>
        </div>
      </div>
<!-- Contents 영역 -->

	
	
	</section>
	
	<c:import url="../temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->

<!-- Script -->
	<script type="text/javascript" src="../js/common.js"></script>
</body>
</html>