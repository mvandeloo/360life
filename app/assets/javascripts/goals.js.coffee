# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'ajax:success', '#new_goal', (xhr, data, status) ->
	$modal = $('#modal')
	$modal_close = $modal.find('.close')

	$modal.html(data).prepend($modal_close)

$(document).ready () ->
	$(".goal_check").click () ->
		$.ajax(
  			type: "PUT"
  			url: "/sections/:section_id/goals/" + $(this).val()
			data:
				completed: $(this).is(':checked')
			).done (msg) ->
			  alert "Data Saved: " + msg

