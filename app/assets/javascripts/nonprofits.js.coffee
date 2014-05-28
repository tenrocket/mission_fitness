$ ->
	$('#signup').on 'click', ->
		$('#modal').slideDown('slow')

	$('#close_modal').on 'click', ->
		$('#modal').slideUp('slow')

	$("#aboutus").click ->
	  $('html,body').animate
	    scrollTop: $("#section_three").offset().top,
	    ('slow')

	$("#howitworks").click ->
	  $('html,body').animate
	    scrollTop: $("#section_two").offset().top,
	    ('slow')

	$(".down_arrow").click ->
    $('html,body').animate
      scrollTop: $("#section_two").offset().top,
      ('slow')

	$(".down_arrow_two").click ->
    $('html,body').animate
      scrollTop: $("#section_three").offset().top,
      ('slow')

	$("form#new_nonprofit").on "ajax:complete", (event, data, status, xhr) ->
		nonprofit = $.parseJSON(data.responseText)
		name = nonprofit.name
		console.log(nonprofit)
		$("#nonprofit_list").append "<div class= \"link_list\">" + name + "</div>"

	$(".nonprofit_show").on "click", ->
			nonprofit_id = $(this).attr("nonprofit_id")
			nonprofit_modal = "#nonprofit_modal_" + nonprofit_id
  	$(nonprofit_modal).show("slow")


