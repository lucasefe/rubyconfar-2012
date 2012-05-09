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

  var mashroom = $('#mushroom');
  $('#sz_studios').hover(function() {
      mashroom.css({"marginLeft": "0"}).animate({"opacity": "1"}, "slow");
    }, function() {      
      mashroom.animate({"opacity": "0"}, "slow", function() { mashroom.css({"marginLeft": "-400px"}) })
    });

  $("#videos ul a").fancybox({
    'transitionIn': 'elastic',
    'transitionOut': 'elastic',
    'speedIn': 600, 
    'speedOut': 200, 
    'overlayColor': '#591B14', 
    'type': 'iframe',
    'padding': "5",
  });

});
