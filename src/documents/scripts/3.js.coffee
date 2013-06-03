#  ==========================================================================
#  What what what ? Scripting time !
#  Author: SquirrelBlack - 2013
#  ==========================================================================

delay = (ms, func) -> setTimeout func, ms

$(document).ready ->

  $(document).scroll ->
    @winHeight = $(window).height()
    @scrollTopVal = $(document).scrollTop()
    @currPage = Math.round(@scrollTopVal / 420) + 1
    console.log('@currPage',@currPage, '@scrollTopVal',@scrollTopVal)
    switch @currPage
      when 1
        $(".focus").removeClass('focus')
        $("#col1 iframe:nth-child(1)").addClass('focus')
        $("#col2 img:nth-child(1), #col2 img:nth-child(5)").addClass('focus')
        $("#col3 img:nth-child(1), #col3 img:nth-child(3)").addClass('focus')
      when 2
        $(".focus").removeClass('focus')
        $("#col1 iframe:nth-child(2)").addClass('focus')
        $("#col2 img:nth-child(2), #col2 img:nth-child(4)").addClass('focus')
        $("#col3 img:nth-child(1), #col3 img:nth-child(2)").addClass('focus')
      when 3
        $(".focus").removeClass('focus')
        $("#col1 iframe:nth-child(3)").addClass('focus')
        $("#col2 img:nth-child(1), #col2 img:nth-child(3)").addClass('focus')
        $("#col3 img:nth-child(2), #col3 img:nth-child(5)").addClass('focus')
      when 4
        $(".focus").removeClass('focus')
        $("#col1 iframe:nth-child(4)").addClass('focus')
        $("#col2 img:nth-child(4)").addClass('focus')
        $("#col3 img:nth-child(6),#col3 img:nth-child(1)").addClass('focus')
      when 5
        $(".focus").removeClass('focus')
        $("#col1 iframe:nth-child(5)").addClass('focus')
        $("#col2 img:nth-child(4),#col2 img:nth-child(3)").addClass('focus')
        $("#col3 img:nth-child(1)").addClass('focus')
      when 6
        $(".focus").removeClass('focus')
        $("#col1 iframe:nth-child(6)").addClass('focus')
        $("#col2 img:nth-child(1)").addClass('focus')
        $("#col3 img:nth-child(3),#col3 img:nth-child(3)").addClass('focus')
      when 7
        $(".focus").removeClass('focus')
        $("#col1 iframe:nth-child(7)").addClass('focus')
        $("#col2 img:nth-child(5)").addClass('focus')
        $("#col3 img:nth-child(3),#col3 img:nth-child(3)").addClass('focus')
