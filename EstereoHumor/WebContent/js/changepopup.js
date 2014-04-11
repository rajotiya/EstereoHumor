$(document).ready(function(){
	$('.cp').click(function(){
		$('.maindiv').show();
		$('.popup').show();
	});
});

$(document).ready(function(){
	$('.close').click(function(){
		$('.maindiv').hide();
		$('.popup').hide();
	});
});