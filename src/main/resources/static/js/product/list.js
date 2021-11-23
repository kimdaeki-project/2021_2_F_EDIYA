function name1(num){
	alert(num);
	if($('#'+num).css("display") == "none"){
		$('#'+num).css("display", "block");
	} else {
		$('#'+num).css("display", "none");
	}
};