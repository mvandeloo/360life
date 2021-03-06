# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


fillQuestionnaire = ->
	i = 1

	while i < 200
		random = Math.floor(Math.random()*5);

		$("input[name='answer[" + i + "]']").eq(random).prop('checked', true)
		i++

$ ->
	$('.random').on 'click', fillQuestionnaire
	$('svg').tooltip track: true

	$('#new_wheel').on 'ajax:success', (xhr, data, status) ->
		console.log(data)
		if(data.status == 'success')
			window.location = data.url
		else
			$('.error_format').html('Please fill out all the answers')