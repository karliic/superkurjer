function show_copywrite() {

	$.ajax({
		url : '/copywrite'
	}).done(function(data) {
		$("#copywrite").html(data)
	});
}

show_copywrite();

$("#copywrite").live("click", function() {
	show_copywrite();
});
