$(function(){
	$(".high").hover(function(e){
		$(e.target).closest(".dpu").css("background-color","red");
	}, function(){
		$(".dpu").css("background-color","");
	});	
	$(".med").hover(function(e){
		$(e.target).closest(".dpu").css("background-color","green");
	}, function(){
		$(".dpu").css("background-color","");
	});	
	$(".low").hover(function(e){
		$(e.target).closest(".dpu").css("background-color","yellow");
	}, function(){
		$(".dpu").css("background-color", "")
	});
});