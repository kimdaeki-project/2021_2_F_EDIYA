<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="../css/common/common.css">
<link type="text/css" rel="stylesheet" href="../css/member/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<!-- nav  -->
<c:import url="../temp_common/header.jsp"></c:import>
<!-- /nav  -->


	<!-- popup -->
	<!-- 이메일 인증란  -->
	<div class="popup_wrap" id="email_find" style="display: none;">
		<div class="popup_blind">
			<div class="login_popup">
				<h1 class="pop_tt">회원확인 서비스</h1>
				<div class="pop_close">
				 <a href="#c" onclick="close_login_pop()">
				 	<img alt="창닫기" src="${pageContext.request.contextPath}/images/member/pop/mypage_pop_close.gif" width="17" height="16">
				 </a>
				</div>
				<h2 class="pop_con_tt">이메일을 찾을 방법을 선택해주세요.</h2>
				<p class="pop_txt">
					타인의 개인정보를 도용할 경우<br>
					서비스 이용 제한 및 법적 제재를 받으실 수 있습니다.
				</p>
				<ul class="certify_list">
					<li>
						<a href="#">
							<em>휴대폰 인증</em>
							<span>본인 명의의 휴대폰을</span>
							이용해 찾습니다.
						</a>
					</li>
					<li>
						<a href="#">
							<em>아이핀 인증</em>
							<span>아이핀을 이용해</span>
							찾습니다.
						</a>
					</li>
					<li>
						<a href="javascript:open_login_pop('join_email_info')">
						<em>가입된 정보확인</em>
						<span>가입 시 입력한</span>
						정보로 찾습니다.
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- /이메일 인증란 -->
	
	<!-- 이메일 찾기:가입 정보 입력 Popup -->
<div class="popup_wrap" id="join_email_info" style="display:none">
<div class="popup_blind">
  <div class="login_popup">
    <h1 class="pop_tt">가입 정보 확인</h1>
    <div class="pop_close"><a href="#c" onClick="close_login_pop()"><img src="${pageContext.request.contextPath}/images/member/pop/mypage_pop_close.gif" width="17" height="16" alt="창닫기" /></a></div>
    
    <h2 class="pop_con_tt">가입 시 입력한 정보를 입력하세요.</h2>
    <p class="pop_txt">타인의 개인정보를 도용 할 경우<br />
    서비스 이용 제한 및 법적 제재를 받으실 수 있습니다.</p>
    
    <form method="POST" action="" name="info_form">
    <fieldset>
    <div class="certify_form">
      <dl>
				<dt><label for="birth01">생년월일</label></dt>
				<dd class="birthday">
					<div class="login_select year">
						<select id="birth01" title="년도">
														<option value="2021">2021</option>
														<option value="2020">2020</option>
														<option value="2019">2019</option>
														<option value="2018">2018</option>
														<option value="2017">2017</option>
														<option value="2016">2016</option>
														<option value="2015">2015</option>
														<option value="2014">2014</option>
														<option value="2013">2013</option>
														<option value="2012">2012</option>
														<option value="2011">2011</option>
														<option value="2010">2010</option>
														<option value="2009">2009</option>
														<option value="2008">2008</option>
														<option value="2007">2007</option>
														<option value="2006">2006</option>
														<option value="2005">2005</option>
														<option value="2004">2004</option>
														<option value="2003">2003</option>
														<option value="2002">2002</option>
														<option value="2001">2001</option>
														<option value="2000">2000</option>
														<option value="1999">1999</option>
														<option value="1998">1998</option>
														<option value="1997">1997</option>
														<option value="1996">1996</option>
														<option value="1995">1995</option>
														<option value="1994">1994</option>
														<option value="1993">1993</option>
														<option value="1992">1992</option>
														<option value="1991">1991</option>
														<option value="1990">1990</option>
														<option value="1989">1989</option>
														<option value="1988">1988</option>
														<option value="1987">1987</option>
														<option value="1986">1986</option>
														<option value="1985">1985</option>
														<option value="1984">1984</option>
														<option value="1983">1983</option>
														<option value="1982">1982</option>
														<option value="1981">1981</option>
														<option value="1980">1980</option>
														<option value="1979">1979</option>
														<option value="1978">1978</option>
														<option value="1977">1977</option>
														<option value="1976">1976</option>
														<option value="1975">1975</option>
														<option value="1974">1974</option>
														<option value="1973">1973</option>
														<option value="1972">1972</option>
														<option value="1971">1971</option>
														<option value="1970">1970</option>
														<option value="1969">1969</option>
														<option value="1968">1968</option>
														<option value="1967">1967</option>
														<option value="1966">1966</option>
														<option value="1965">1965</option>
														<option value="1964">1964</option>
														<option value="1963">1963</option>
														<option value="1962">1962</option>
														<option value="1961">1961</option>
														<option value="1960">1960</option>
														<option value="1959">1959</option>
														<option value="1958">1958</option>
														<option value="1957">1957</option>
														<option value="1956">1956</option>
														<option value="1955">1955</option>
														<option value="1954">1954</option>
														<option value="1953">1953</option>
														<option value="1952">1952</option>
														<option value="1951">1951</option>
														<option value="1950">1950</option>
														<option value="1949">1949</option>
														<option value="1948">1948</option>
														<option value="1947">1947</option>
														<option value="1946">1946</option>
														<option value="1945">1945</option>
														<option value="1944">1944</option>
														<option value="1943">1943</option>
														<option value="1942">1942</option>
														<option value="1941">1941</option>
														<option value="1940">1940</option>
														<option value="1939">1939</option>
														<option value="1938">1938</option>
														<option value="1937">1937</option>
														<option value="1936">1936</option>
														<option value="1935">1935</option>
														<option value="1934">1934</option>
														<option value="1933">1933</option>
														<option value="1932">1932</option>
														<option value="1931">1931</option>
														<option value="1930">1930</option>
														<option value="1929">1929</option>
														<option value="1928">1928</option>
														<option value="1927">1927</option>
														<option value="1926">1926</option>
														<option value="1925">1925</option>
														<option value="1924">1924</option>
														<option value="1923">1923</option>
														<option value="1922">1922</option>
														<option value="1921">1921</option>
														<option value="1920">1920</option>
														<option value="1919">1919</option>
														<option value="1918">1918</option>
														<option value="1917">1917</option>
														<option value="1916">1916</option>
														<option value="1915">1915</option>
														<option value="1914">1914</option>
														<option value="1913">1913</option>
														<option value="1912">1912</option>
														<option value="1911">1911</option>
														<option value="1910">1910</option>
													</select>
					</div>
					<div class="login_select day">
						<select id="birth02" title="월">
														<option value="01">01</option>
														<option value="02">02</option>
														<option value="03">03</option>
														<option value="04">04</option>
														<option value="05">05</option>
														<option value="06">06</option>
														<option value="07">07</option>
														<option value="08">08</option>
														<option value="09">09</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
													</select>
					</div>
					<div class="login_select day">
						<select id="birth03" title="일">
														<option value="01">01</option>
														<option value="02">02</option>
														<option value="03">03</option>
														<option value="04">04</option>
														<option value="05">05</option>
														<option value="06">06</option>
														<option value="07">07</option>
														<option value="08">08</option>
														<option value="09">09</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>
														<option value="17">17</option>
														<option value="18">18</option>
														<option value="19">19</option>
														<option value="20">20</option>
														<option value="21">21</option>
														<option value="22">22</option>
														<option value="23">23</option>
														<option value="24">24</option>
														<option value="25">25</option>
														<option value="26">26</option>
														<option value="27">27</option>
														<option value="28">28</option>
														<option value="29">29</option>
														<option value="30">30</option>
														<option value="31">31</option>
													</select>
					</div>
				</dd>
      </dl>
      <dl>
        <dt><label for="findEmailMobileNo">휴대폰</label></dt>
        <dd><input id="findEmailMobileNo" placeholder="가입 시 입력한 휴대폰 번호를 '-'없이 입력하세요" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" maxlength="11" /></dd>
      </dl>
      
      <p class="info_txt" id="mem_error" style="display:none">입력하신 정보와 일치하는 회원정보가 없습니다.<br />
      정보를 다시 입력하시거나 회원가입을 이용해주세요.</p>
    </div>
    
    <div class="form_btn">
    	<a href="#c" class="gray_btn" onclick="open_login_pop('email_find')">이전화면</a>
      <input type="button" onclick="find_email()" value="이메일 찾기" class="submit_btn submit_half_btn" />
    </div>
    </fieldset>
    </form>
  </div>
</div></div>
<!-- //이메일 찾기:가입 정보 입력 Popup -->
	
	
<!-- 이메일 찾기:가입 정보 확인 popup -->
<div class="popup_wrap" id="join_info_email" style="display:none">
<div class="popup_blind">
  <div class="login_popup">
    <h1 class="pop_tt">가입 정보 확인</h1>
    <div class="pop_close"><a href="#c" onClick="close_login_pop()"><img src="${pageContext.request.contextPath}/images/member/pop/mypage_pop_close.gif" width="17" height="16" alt="창닫기" /></a></div>
    
    <h2 class="pop_con_tt">회원님이 가입한 이메일 입니다.</h2>
    <fieldset>
    <div class="certify_form">
      <ul class="email_list">
      	<li id="userEmail">test00******@test.com</li>
      </ul> 
    </div>
    
    <div class="form_btn">
    	<a href="#c" onClick="close_login_pop()" class="blue_btn full_btn">확인</a>
    </div>
    </fieldset>
  </div>
</div></div>
<!-- //이메일 찾기:가입 정보 확인 popup -->	
	
	<!-- 비밀번호 찾기:회원확인 서비스 Popup -->
<div class="popup_wrap" id="passwd_find" style="display:none">
<div class="popup_blind">
  <div class="login_popup">
    <h1 class="pop_tt">회원확인 서비스</h1>
    <div class="pop_close"><a href="#c" onClick="close_login_pop()"><img src="${pageContext.request.contextPath}/images/member/pop/mypage_pop_close.gif" width="17" height="16" alt="창닫기" /></a></div>
    
    <h2 class="pop_con_tt">비밀번호를 찾을 방법을 선택해주세요.</h2>
    <p class="pop_txt">타인의 개인정보를 도용 할 경우<br />
    서비스 이용 제한 및 법적 제재를 받으실 수 있습니다.</p>
    
    <ul class="certify_list">
    	<li>
      	<a href=""><em>휴대폰 인증</em>
        <span>본인 명의의 휴대폰을</span> 이용해 찾습니다.</a>
      </li>
      <li>
      	<a href=""><em>아이핀 인증</em>
        <span>아이핀ID를 이용해</span> 찾습니다.</a>
      </li>
      <li>
      	<a href="#c" onclick="open_login_pop('join_passwd_info')"><em>가입된 정보확인</em>
        <span>가입 시 입력한</span> 정보로 찾습니다.</a>
      </li>
    </ul>
  </div>
</div></div>
<!-- //비밀번호 찾기:회원확인 서비스 Popup -->

<!-- 비밀번호 찾기:가입 정보 입력 Popup -->
<div class="popup_wrap" id="join_passwd_info" style="display:none">
<input type="hidden" id="method" value="phone">
<div class="popup_blind">
  <div class="login_popup">
    <h1 class="pop_tt">가입 정보 확인</h1>
    <div class="pop_close"><a href="#c" onClick="close_login_pop()"><img src="${pageContext.request.contextPath}/images/member/pop/mypage_pop_close.gif" width="17" height="16" alt="창닫기" /></a></div>
    
    <h2 class="pop_con_tt">가입 시 입력한 정보를 입력하세요.</h2>
    <p class="pop_txt">타인의 개인정보를 도용 할 경우<br />
    서비스 이용 제한 및 법적 제재를 받으실 수 있습니다.</p>
    
    <form method="post" id="pwReset" action="./pwReset">
    <fieldset>
    <div class="certify_form">
      <dl>
      	<dt><label for="email">이메일</label></dt>
        <dd>
        	<ul class="pop_email_form">
          	<li class="join_email01">
            	<label for="join_email01" class="blind"></label>
              <input type="text" name="email" id="pw_email" value="" placeholder="이메일" />
            </li>
            <li class="join_at">@</li>
            <li class="join_email02">
            	<label for="email_etc" class="blind"></label>
              <input type="text" name="email_etc" id="email_etc" value="" />
            </li>
            <li class="join_select">
              <select name="join_email" id="join_email">
                <option value="etc">직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="nate.com">nate.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="yahoo.co.kr">yahoo.co.kr</option>
					<option value="gmail.com">gmail.com</option>
              </select>
            </li>            
          </ul>
        </dd>
      </dl>
      <dl>
        <dt><label for="phone">휴대폰</label></dt>
        <dd><input id="pw_phone" placeholder="가입시 입력한 휴대폰 번호를 '-' 없이 입력하세요" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" maxlength="11"/></dd>
      </dl>
       <dl>
        <dt><label for="Number">인증번호</label></dt>
        <dd><input id="pw_number" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" maxlength="6"/></dd>
      </dl>
      <div class="button_box">
      	<button type="button" onclick="passwd_find()"   class="number_btn">인증번호발송</button>
        <button type="button" onclick="passwd_check()"  class="numberCheck_btn">인증번호확인</button>
        </div>
      <p class="info_txt" id="passwd_info_txt" style="display:none">입력하신 정보와 일치하는 회원정보가 없습니다.<br />
      정보를 다시 입력하시거나 회원가입을 이용해주세요.</p>
    </div>
    
    <div class="form_btn">
    	<a href="#c" class="gray_btn" onclick="open_login_pop('passwd_find')">이전화면</a>
      <input type="button" onclick="passwordUpdate()"  value="임시 비밀번호 발급" class="submit_btn submit_half_btn"/>
    </div>
    </fieldset>
    </form>
  </div>
</div></div>
<!-- //비밀번호 찾기:가입 정보 입력 Popup -->
	
	
		<!-- /popup -->
	
	
	
	<!-- contents  -->
 <div class="login_bg">	
	<div class="login_con">
		<h1 class="login_tt"><img src="${pageContext.request.contextPath}/images/member/login/login_tt.png" width="227" height="76" alt="로그인"></h1>
		<p class="login_txt">
			<em>Welcome, Ediya Coffee</em>
			  이디야커피에 오신 것을 환영합니다.
			</p>
			<div class="mem_info" style="margin-bottom:20px;">
				<h2>이디야 회원이셨나요?
				<em>이디야 멤버스가 새로워졌습니다.</em></h2>
				<p>
					회원님께 더 좋은 서비스를 제공해드리고자,
					<br>
					 선물하기, 이디야카드, 스마트오더 등의 서비스를 추가하여 더욱 새로워졌습니다.
					<br>
					 회원님께서 새로운 서비스를 이용하시기 위해서는 본인 인증이 필요합니다.
					<br>
					 본인 인증은 1회만 진행하며, 인증후, 더 편리하게 서비스를 이용하실 수 있습니다.
					</p>
					<a href="#c" onclick="open_login_pop('join_email_info')">이디야 멤버스 가입정보 찾기</a>
			</div>
			
			
			<div class="login_box" id="login_wrap">
		<div id="login_form">
		<form action="./login" name="login_form" method="POST" >
		<fieldset>
			<legend>ADMIN LOGIN</legend>
				<div>                                                                           <!-- 영문만 입력  -->
					<input type="text" name="username" id="user_id" placeholder="이메일을 입력하세요" style="ime-mode:disabled">
					<input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요">
				</div>
				
				<div class="email_save">
				<input type="checkbox" id="email_save">
				<label for="email_save">이메일 저장</label>
				</div>
				<input type="submit" name="Submit" value="로그인" class="login_btn">
				
				<div class="join_btn">
					<a href="./joinCheck">회원가입</a>
					<a href="#c" onclick="open_login_pop('email_find')">이메일 찾기</a>
					<a href="#c" onclick="open_login_pop('passwd_find')">비밀번호 찾기</a>
				</div>
		
		</fieldset>
		</form>
		</div>
	</div>
				
			
	</div>
	
</div>	

	<!-- /contents  -->


<!-- footer  -->
<c:import url="../temp_common/footer.jsp"></c:import>
<!-- /footer  -->

<!-- Script -->
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript">
	
		/* 팝업창 닫기  */
		function close_login_pop() {
			$(".popup_wrap").hide();
		}
		
		/* 팝업창 열기 */
		function open_login_pop(pop_id){
			$(".popup_wrap").hide();
			$("#"+pop_id).css({"top":(($(window).height()-$("#"+pop_id).outerHeight())/2+ $(window).scrollTop())+"px", 	"left":(($(window).width()-$("#"+pop_id).outerWidth())/2+ $(window).scrollLeft())+"px"}); 
			$("#"+pop_id).show();	
		}
		
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
		
		/* 이메일 찾기   */
		function find_email() {
			var birth01 = $("#birth01").val();
			var birth02 = $("#birth02").val();
			var birth03 = $("#birth03").val();
			var birthday = birth01 + "-" + birth02 + "-" + birth03;
			var phone = $("#findEmailMobileNo").val();
			
			console.log(birthday);
			console.log(phone);
			
			
			
			$.ajax({
				type : "POST",
				url : "./findId",
				data : {birthday : birthday, phone : phone},
				success : function(data) {
					
					
					console.log(data);
					
					 if(data == "0"){
						 var test12 = $("#userEmail").text("가입한 데이터가 없습니다.");
						 open_login_pop("join_info_email");
					
					}else{
						var test12 = $("#userEmail").text(data);
						 open_login_pop("join_info_email");
					} 
		 
					
				}
				
				
			})
			
		}
		
		/* 이메일 인증   */
		function passwd_find(){
			
			/* email이랑 phone 부분이 null일 경우 alert으로 적으라고 알람 보내기.  */
			
			var email = $("#pw_email").val();
			var email_etc = $("#email_etc").val();

			var emailFind = email  + "@" +  email_etc;
			var phone = $("#pw_phone").val();
			
			
			if(email == "" || email_etc == ""){
				alert("이메일을 작성해주세요");
			}else{
				
				if(phone == ""){
					alert("휴대폰 번호를 작성해주세요")
				}else{
					
					$.ajax({
						type : "POST",
						url : "./pwFind",
						data : { userName : emailFind , phone : phone},
						success : function(data){
							alert(data);
						}
					
					})
			
				}
				
				
			}
	
		}
		
		let pw_numberCheck = false;
		/* 인증번호 체크  */
		function passwd_check(){
			
				var email = $("#pw_email").val();
				var email_etc = $("#email_etc").val();
				var emailFind = email  + "@" +  email_etc;
			
				var number = $("#pw_number").val();
		
				$.ajax({
					
					type : "POST",
					url : "./pwCheck",
					data : {userName : emailFind},
					success : function(data){
						
						if(number == data){
							alert("인증번호 확인");
							pw_numberCheck = true;
						}else{
							alert("인증번호가 다릅니다.");
						}
						
					}
					
					
				})
		
		}
		
		
		/* 임시 비밀번호 발급  */
		function passwordUpdate(){
			
			if(pw_numberCheck == true){
				$("#pwReset").submit();
			}
			
			
		}
		
		
		
		
	</script>
</body>
</html>