$(function() {
  $('#wrapper section').scrollspy({
    onEnter: function(element, position) {
      console.log("IN " + element.id)
      
    }, onLeave: function(element, position) {
      console.log("OUT " + element.id)
    }
  });

  $('#subscriber_container form').live('submit', function(){
    $.post(this.action, $(this).serialize(), function(data, textStatus, jqXHR) {
      $('#subscriber_container').html(data)
    })
    return false
  })

  $("img.a").hover(function() {
      $(this).stop().animate({"opacity": "0"}, "slow");
    }, function() {
      $(this).stop().animate({"opacity": "1"}, "slow");
  });

  $("#videos ul li a").fancybox({
    'transitionIn': 'elastic',
    'transitionOut': 'elastic',
    'speedIn': 600, 
    'speedOut': 200, 
    'overlayShow': false, 
    'type': 'iframe'
  });

  $('section#videos a.more-videos').click(function() {
    $('section#videos a.less-videos').show();
    $('section#videos ul.more-videos').slideDown(500);
    $(this).hide();
  });

  $('section#videos a.less-videos').click(function() {
    $('section#videos a.more-videos').show();
    $('section#videos ul.more-videos').slideUp(500);
    $(this).hide();
  });
});
