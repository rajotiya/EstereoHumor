$(document).ready(function() {
	$("#searchinput").keyup(function() {
		var value = $(this).val();
		moveToNextPage(value);
	});
});

function moveToNextPage(value) {
	var location = "search?search=" + value;
	window.location.href = location;
};
