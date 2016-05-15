$('#docModal').html("<%= j(render 'modal') %>")
$('#docModal .modal').modal()
$('.modal .btn-custom').on 'click', (event) ->
  points = $(event.target).attr('id').slice(7 - $(event.target).attr('id').length)
  $('#current-points span').html($('#current-points span').html() - points)
