$(document).ready(function(){

	$("#hideForm").hide()

	// show new form
	$("#new").on('click', function(e){
		e.preventDefault()
		$("#hideForm").show()

		$.ajax({
			method: 'GET',
			url: '/students/new',
			success: function(data){
				$(".newform").hide().html(data).fadeIn(500)
			}
		})
		$("#new").hide()
	});

	// show edit form
	$("#hideForm").on('click', function(e){
		e.preventDefault()
		$(".newform").fadeOut(500)

		$("#hideForm").hide()
		$("#new").show()
	})

});