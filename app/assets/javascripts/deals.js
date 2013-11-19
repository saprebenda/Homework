$(function(){
	$(".high").hover(function(e){
		$(e.target).closest(".high").css("background-color","red");
	}, function(){
		$(".high").css("background-color","");
	});	
	$(".med").hover(function(e){
		$(e.target).closest(".med").css("background-color","blue");
	}, function(){
		$(".med").css("background-color","");
	});	
	$(".low").hover(function(e){
		$(e.target).closest(".low").css("background-color","green");
	}, function(){
		$(".low").css("background-color", "")
	});
});