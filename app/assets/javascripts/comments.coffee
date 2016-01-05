# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ajax:success", "form#comment-form", (ev,data)->
	console.log data
	$("#comment-box").append("<li> #{data.user.email}</li>")   
	$("#comment-box").append("<li> #{data.body}</li>") 
	$(this).find("textarea").val("")


$(document).on "ajax:error", "form#comment-form", (ev,data)->
	console.log data


	