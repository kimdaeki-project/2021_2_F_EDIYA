<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="top_nav">
	<div class="top_align">
	</div>
	<h1 class="top_logo">
		<a href="#">
			<img alt="" src="images/common/top_logo.gif">
		</a>
	</h1>
	<ul class="main">
		<li><a href="#">메뉴</a></li>
		<li><a href="#">유통제품</a></li>
		<li><a href="#">이디야멤버스</a></li>
		<li><a href="#">기프트카드</a></li>
		<li><a href="#">사회공헌</a></li>
		<li><a href="#">공지사항</a></li>
	</ul>
</header>
<script type="text/javascript">
	$(document).ready(function() {
		var lastScroll = 0;
		$(window).scroll(function(event) {
			var scroll = $(this).scrollTop();
			if(scroll > 50){
				$(".top_nav").addClass("top_fixed");
				$(".top_align").addClass("hide");
			}else{
				$(".top_nav").removeClass("top_fixed");
				$(".top_align").removeClass("hide");
			}
		});
	});
</script>