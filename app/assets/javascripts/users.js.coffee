# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'ajax:success', '#new_user', (xhr, data, status) ->
	$modal = $('#modal')
	$modal_close = $modal.find('.close')

	$modal.html(data).prepend($modal_close)
	