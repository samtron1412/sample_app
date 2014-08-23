updateCountdown =->
	remaining = 140 - jQuery("#micropost_content").val().length
	jQuery(".countdown").text remaining
	jQuery(".countdown").css("color", "gray") if 140 >= remaining > 20
	jQuery(".countdown").css("color", "black") if 20 >= remaining > 10
	jQuery(".countdown").css("color", "red") if 10 >= remaining

jQuery ->
	updateCountdown()
	$("#micropost_content").on("change keyup keypress", updateCountdown)
	# $("#micropost_content").change updateCountdown
	# $("#micropost_content").keyup updateCountdown
	# $("#micropost_content").keypress updateCountdown
