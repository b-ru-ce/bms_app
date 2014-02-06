$(document).bind 'page:change', ->
  $.fancybox.init()
  $("#loading_div").hide()

ready = ->
  $('.gallery').fancybox()
  feedback()
  catalog()

$(document).on 'page:fetch', ->
  $("#loading_div").show()


$(document).ready(ready)
$(document).on('page:load', ready)