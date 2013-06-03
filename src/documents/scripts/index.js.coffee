#  ==========================================================================
#  What what what ? Scripting time !
#  Author: SquirrelBlack - 2013
#  ==========================================================================

delay = (ms, func) -> setTimeout func, ms

$(document).ready ->

  $("a").click (event) =>
    event.preventDefault()
    window.open($(event.currentTarget).attr('href'), 'videoplayer', 'width=1440, height=900, innerHeight=900, resizable=no, location=no, menubar=no, status=no, titlebar=no, scrollbars=yes' )