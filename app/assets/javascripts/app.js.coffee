$(document).bind 'page:change', ->
  $.fancybox.init()

ready = ->
  $('.gallery').fancybox()
  feedback()
  catalog()


$(document).ready(ready)
$(document).on('page:load', ready)