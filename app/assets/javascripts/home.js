$(function() {

	$('#signup').on('click', function () {
		$('#modal').slideDown('slow');
	});

	$('#close_modal').on('click', function () {
		$('#modal').hide('slow');
	});

	// $('#nonprofit_show').on('click', function () {
	// 	$('#nonprofit_modal').fadeIn('slow';);
	// });

});

$(function() {

	$("#aboutus").click(function() {
	    $('html,body').animate({
	        scrollTop: $("#section_three").offset().top},
	        'slow');
	});

	$("#howitworks").click(function() {
	    $('html,body').animate({
	        scrollTop: $("#section_two").offset().top},
	        'slow');
	});

	$("#down_arrow").click(function() {
    $('html,body').animate({
        scrollTop: $("#section_two").offset().top},
        'slow');
	});
});