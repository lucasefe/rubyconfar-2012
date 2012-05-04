$(function() {
  $('#subscriptor_container form').live('submit', function(){
    $.post(this.action, $(this).serialize(), function(data, textStatus, jqXHR) {
      $('#subscriptor_container').html(data)
    })
      
    return false
  })
})


$(document).ready(function(){
  $("img.a").hover(
    function() {
    $(this).stop().animate({"opacity": "0"}, "slow");
    },
    function() {
    $(this).stop().animate({"opacity": "1"}, "slow");
  });
});