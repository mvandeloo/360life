# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


fillQuestionnaire = ->
	i = 33

	while i < 65
		random = Math.floor(Math.random()*5);

		$("input[name='answer[" + i + "]']").eq(random).prop('checked', true)
		i++

$ ->
	$('.random').on 'click', fillQuestionnaire