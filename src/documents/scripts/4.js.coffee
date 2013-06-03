#  ==========================================================================
#  What what what ? Scripting time !
#  Author: SquirrelBlack - 2013
#  ==========================================================================

delay = (ms, func) -> setTimeout func, ms

$(document).ready ->
  $("#toggle a").click (event) =>
    event.preventDefault()
    $("#toggle .selected").removeClass('selected')
    $(event.currentTarget).parent().addClass("selected")
    targetSection = $(event.currentTarget).attr('data-target')
    $("."+targetSection).siblings('.section').fadeOut(500)
    $(".animate-in").removeClass('animate-in')
    delay 10, () =>
      $("."+targetSection).fadeIn(500).addClass('animate-in')

  $(".vid-arrow.right").click (event) =>
    if (parseInt($("#vids").css('left'),10) == 0)
      $('#vids').css('left','-100%')

  $(".vid-arrow.left").click (event) =>
    if (parseInt($("#vids").css('left'),10) != 0)
      $('#vids').css('left','0%')

