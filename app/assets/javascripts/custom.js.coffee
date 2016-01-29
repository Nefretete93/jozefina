$(document).ready ->
  $('body').scrollspy
    target: '.navbar'
    offset: 50
  $('#myNavbar a').on 'click', (event) ->
    event.preventDefault()
    hash = @hash
    $('html, body').animate { scrollTop: $(hash).offset().top }, 800, ->
      window.location.hash = hash
      return
    return
  return