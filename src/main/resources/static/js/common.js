$(function(){
	$('.pas').on("click", function() {		
		var id = $(this).attr('id').substring(3,6);
		var pr = $(this);
		
		var jsontmp = { pdNum:id , pdName: $("#NK" + id).text(), pdPrice: $("#PR" + id).text()};

		//ajax
		$.ajax({
			url: "product/pdcarts", // 클라이언트가 요청을 보낼 서버의 URL 주소
			data: JSON.stringify(jsontmp),                // HTTP 요청과 함께 서버로 보낼 데이터
			type: "POST",                             // HTTP 요청 방식(GET, POST)
			dataType: "json",                         // 서버에서 보내줄 데이터의 타입
  			contentType:"application/json",
  			
	        complete:function(){
	        },
	        success : function(data){
				switch(data){
					case 0:
					break;
					case 1:
					break;
					case 2:
						alert("로그인이 필요합니다.");
					break;
				}
	            
	        },  			
  			
})
		
		
	})
})