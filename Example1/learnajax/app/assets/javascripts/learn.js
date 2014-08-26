$(document).ready(function(){
	$(".getText").on("click", function(){
		alert("YO!")
		$.getJSON("https://api.github.com/repos/vmg/redcarpet/issues?state=closed", function(data){
			console.log("THIS SHIT WORK?")
			console.log(data)
		})
	})
})