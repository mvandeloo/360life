$ ->
  $modal = $('#modal')
  $modal_close = $modal.find('.close')
  $modal_container = $('#modal-container')
 
  # Handle modal links with the data-remote attribute
  $(document).on 'ajax:success', 'a[data-remote]', (xhr, data, status) ->
    $modal
      .html(data)
      .prepend($modal_close)
      .css('top', $(window).scrollTop() + 40)
      .show()
    $modal_container.show();
    $( "#goal_due_date" ).datepicker(dateFormat: 'yy-mm-dd')
    $( "svg" ).tooltip( "option", "disabled", true );
 
  $(document).on 'click', '#modal .close', ->
    $modal_container.hide()
    $modal.hide()
    $( "svg" ).tooltip( "option", "disabled", false );
    false

  $('a[data-text]').on 'click', (e)->
    $modal
      .html($(this).data('text'))
      .prepend($modal_close)
      .css('top', $(window).scrollTop() + 40)
      .show()
    e.preventDefault()