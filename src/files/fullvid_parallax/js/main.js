$(document).ready(function(){
  $(".fullvid1").mousemove(function(evt){
    $(".fullvid1 .nevernot-sign").css('margin-left',evt.pageX/40);
  });
  $(".fullvid2").mousemove(function(evt){
    $(".fullvid2 .nevernot-sign").css('opacity',((Math.abs(evt.pageX - 500)/ 500) + 0.2 ) * 0.2);
  });
  $(".fullvid3").click(function(evt){
    $(".fullvid3").toggleClass('show-athlete');
  });
  $(".fullvid4").mousemove(function(evt){
    $(".fullvid4 .nevernot-sign").css('margin-left',evt.pageX/40);
  });
});
