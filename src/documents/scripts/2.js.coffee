#  ==========================================================================
#  What what what ? Scripting time !
#  Author: SquirrelBlack - 2013
#  ==========================================================================

delay = (ms, func) -> setTimeout func, ms

$(document).ready ->

  @$headshotSeq = $('<div/>')
  for i in [122..268] by 1
    @$headshotSeq.append('<img src="img/sequence2/sequence2_00' + i + '.jpg"/>')

  $(".longform-section.section1 .animated-col").append(@$headshotSeq)

  $("#cover_trailer").fitVids()
  $(".fluid-width-video-wrapper iframe,.fluid-width-video-wrapper,.video-wrapper").css('height',$(window).height()-50)

  delay 700, ->
    $("#overlay").fadeOut(800, 'easeInQuart')
  delay 2500, ->
    $("#nav_wrapper").removeClass('slide-out')

  $("#nav_wrapper").mouseenter ->
    @scrollTopVal = $(document).scrollTop()
    if (@scrollTopVal < 10)
      $("#nav_wrapper").addClass('slide-out')
    if ($("#nav_wrapper").hasClass('fixed-top'))
      $("#nav_wrapper").addClass('slide-out')

  $("#nav_wrapper").mouseleave ->
    $("#nav_wrapper").removeClass('slide-out')

  delay 500, =>
    @copyLeftColTop = $(".copy.leftcol").offset().top
    @copyLeftColBottom = $(".copy.leftcol").offset().top + $(".copy.leftcol").outerHeight() - $(window).height()
    @copyRightColTop = $(".copy.rightcol").offset().top
    @copyRightColBottom = $(".copy.rightcol").offset().top + $(".copy.rightcol").outerHeight() - $(window).height()

  $(document).scroll ->
    @scrollTopVal = $(document).scrollTop()
    @navBarOffset = $("#cover_trailer").height()
    if ((@scrollTopVal > @navBarOffset) && !$("#nav_wrapper").hasClass('fixed-top'))
      $("#nav_wrapper").addClass('fixed-top')

    if ((@scrollTopVal < @navBarOffset) && $("#nav_wrapper").hasClass('fixed-top'))
      $("#nav_wrapper").removeClass('fixed-top')

    if (@scrollTopVal > @copyLeftColTop && @scrollTopVal < @copyLeftColBottom )
      $(".section1 .animated-col").removeClass("locked-bottom").addClass("locked")

      @scrollIndex = Math.round($(document).scrollTop() % 146)
      console.log(@scrollIndex)

      $(".section1 .animated-col img:nth-child(" + @scrollIndex + ")").fadeIn(400)
      $(".section1 .animated-col img:nth-child(" + @scrollIndex + ")").siblings('img').fadeOut(600)
    else if (@scrollTopVal > @copyLeftColBottom)
      $(".section1 .animated-col").removeClass("locked").addClass("locked-bottom")
    else
      $(".section1 .animated-col").removeClass("locked-bottom locked")

    # console.log(@copyRightColTop,@copyRightColBottom)
    if (@scrollTopVal > @copyRightColTop && @scrollTopVal < @copyRightColBottom )
      $(".section2 .animated-col").removeClass("locked-bottom").addClass("locked")

      @scrollIndex = Math.round($(document).scrollTop() / 20 % 13)
      $(".section2 .animated-col img:nth-child(" + @scrollIndex + ")").show()
      $(".section2 .animated-col img:nth-child(" + @scrollIndex + ")").siblings('img').fadeOut(100)
    else if (@scrollTopVal > @copyRightColBottom)
      $(".section2 .animated-col").removeClass("locked").addClass("locked-bottom")
    else
      $(".section2 .animated-col").removeClass("locked-bottom locked")


  $.stellar({
    # // Set scrolling to be in either one or both directions
    horizontalScrolling: true,
    verticalScrolling: true,

    # // Set the global alignment offsets
    horizontalOffset: 0,
    verticalOffset: 0,

    # // Refreshes parallax content on window load and resize
    responsive: false,

    # // Select which property is used to calculate scroll.
    # // Choose 'scroll', 'position', 'margin' or 'transform',
    # // or write your own 'scrollProperty' plugin.
    scrollProperty: 'scroll',

    # // Select which property is used to position elements.
    # // Choose between 'position' or 'transform',
    # // or write your own 'positionProperty' plugin.
    positionProperty: 'position',

    # // Enable or disable the two types of parallax
    parallaxBackgrounds: true,
    parallaxElements: true,

    # // Hide parallax elements that move outside the viewport
    hideDistantElements: false,

    # // Customise how elements are shown and hidden
    hideElement: ($elem) ->
      $elem.hide()
    showElement: ($elem) ->
      $elem.show()
  })

