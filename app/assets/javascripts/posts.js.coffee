# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
updateCountdown = -> 
  remaining = 140 - jQuery("#post_body").val().length
  jQuery(".countdown").text remaining + " characters remaining"
  jQuery(".countdown").css "color", (if (140 >= remaining >= 21) then "gray")
  jQuery(".countdown").css "color", (if (21 > remaining >= 11) then "black")
  jQuery(".countdown").css "color", (if (11 > remaining)  then "red")

jQuery ->
  updateCountdown()
  $("#post_body").change updateCountdown
  $("#post_body").keyup updateCountdown

$(document).ready -> # When the Dom is ready
  $(".error").fadeOut 2000 #Add a fade out effect that will last for 2000 millisecond
  $(".alert").fadeOut 2000
  $(".notice").fadeOut 2000
  $(".success").fadeOut 2000
  $(".info").fadeOut 2000