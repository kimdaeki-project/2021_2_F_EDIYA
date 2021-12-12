$(function(){
	$('#pas').on("click", function() {
		console.log("OK");
		
		//ajax
		$.ajax({
			url: "product/pdcarts", // 클라이언트가 요청을 보낼 서버의 URL 주소
			data: { name: "홍길동" },                // HTTP 요청과 함께 서버로 보낼 데이터
			type: "POST",                             // HTTP 요청 방식(GET, POST)
			dataType: "json"                         // 서버에서 보내줄 데이터의 타입

})
		
		
	})
})