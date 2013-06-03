#  ==========================================================================
#  What what what ? Scripting time !
#  Author: SquirrelBlack - 2013
#  ==========================================================================

delay = (ms, func) -> setTimeout func, ms

$(document).ready ->

  $("#cover_trailer_fixed").fitVids()

  @lastPage = 1
  $(document).scroll ->
    @winHeight = $(window).height()
    @scrollTopVal = $(document).scrollTop()
    console.log('@lastPage',@lastPage)

    if ( @scrollTopVal < 1100)
      if (@lastPage != 1)
        $("#cover_trailer_fixed .video-wrapper").html('').append('<iframe width="425" height="349" src="http://www.youtube.com/embed/Af8Xrwf0ZEw?rel=0" frameborder="0" allowfullscreen="true"/>')
        $("#cover_trailer_fixed").fitVids()
        @lastPage = 1
    else if ( @scrollTopVal > 1100 && @scrollTopVal < 3600)
      if (@lastPage != 2)
        $("#cover_trailer_fixed .video-wrapper").html('').append('<iframe width="425" height="349" src="http://www.youtube.com/embed/rblvpM63W9Q?rel=0" frameborder="0" allowfullscreen="true"/>')
        $("#cover_trailer_fixed").fitVids()
        @lastPage = 2
    else if ( @scrollTopVal > 3600 && @scrollTopVal < 6100)
      if (@lastPage != 3)
        $("#cover_trailer_fixed .video-wrapper").html('').append('<iframe width="425" height="349" src="http://www.youtube.com/embed/THaRYKk5rrk?rel=0" frameborder="0" allowfullscreen="true"/>')
        $("#cover_trailer_fixed").fitVids()
        @lastPage = 3
    else if ( @scrollTopVal > 8600 && @scrollTopVal < 11100)
      if (@lastPage != 4)
        $("#cover_trailer_fixed .video-wrapper").html('').append('<iframe width="425" height="349" src="http://www.youtube.com/embed/MhW4Hq2JvEQ?rel=0" frameborder="0" allowfullscreen="true"/>')
        $("#cover_trailer_fixed").fitVids()
        @lastPage = 4
