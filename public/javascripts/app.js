function highlightIfActive(section) {
  position = $(document).scrollTop() // should I pass it over, to avoid recalculating it every time? 
  offset = -100;
  start = section.position().top + offset;
  end = section.height() + section.position().top  + offset;
  elem = $('nav a[href="#' + section.attr('id') + '"]');
  if ((position >= start) && (position <= end)) {
    elem.addClass('active');
  } else {
    elem.removeClass('active');
  }
}

$(function() {

  // Nice animation when clicking the nav
  $('nav a').click( function(e){
    var link = $(this).attr('href');
    console.log($(link));
    $('body,html').animate({ scrollTop: $(link).offset().top}, 1000);
    e.preventDefault();
  });


  $('section').each(function() {
    highlightIfActive($(this))
  });

  $(document).on('scroll', function(){
    $('section').each(function() {
      highlightIfActive($(this))
    });
  })

  
  // Ajax submision of subscriber form
  $('#subscriber_container form').live('submit', function(){
    $.post(this.action, $(this).serialize(), function(data, textStatus, jqXHR) {
      $('#subscriber_container').html(data)
    })
    return false
  })
  // Ajax submision of proposal form
  $('#proposal_container form').live('submit', function(){
    $.post(this.action, $(this).serialize(), function(data, textStatus, jqXHR) {
      $('#proposal_container').html(data)
    })
    return false
  })

  // Images with hover
  $("img.a").hover(function() {
      $(this).stop().animate({"opacity": "0"}, "slow");
    }, function() {
      $(this).stop().animate({"opacity": "1"}, "slow");
  });

  $("input[type='email']").hover(function() {
      $("#fist img.a").stop().animate({"opacity": "0"}, "slow");
    }, function() {
      $("#fist img.a").stop().animate({"opacity": "1"}, "slow");
  });


  // Animating the mashroom
  var mashroom = $('#fist img.c');
  $('#sz_studios').hover(function() {
    mashroom.css({"display": "block"}).animate({"opacity": "1"}, "slow");
  }, function() {      
    mashroom.animate({"opacity": "0"}, "slow", function() { mashroom.css({"display": "none"}) })
  })

  $('a#fist').click(function(e){
    e.preventDefault();
    $('nav a:first').click();
  });

  // Basic fancybox hooks for the vimeo videos. 
  $("#videos ul a").fancybox({
    'transitionIn': 'elastic',
    'transitionOut': 'elastic',
    'speedIn': 600, 
    'speedOut': 200, 
    'overlayColor': '#591B14', 
    'type': 'iframe',
    'padding': "5",
  });

  // Detecting iOS device
  if ((navigator.userAgent.match(/iPhone/i)) || (navigator.userAgent.match(/iPod/i)) || (navigator.userAgent.match(/iPad/i))) {    
    $('head').append('<link rel="stylesheet" href="/stylesheets/ios.css" type="text/css" media="screen" charset="utf-8">');
  };

  $('.tweet').tweet({
    username: "rubyconfar",
    join_text: "auto",
    intro_text: "<a href='http://www.twitter.com/RubyconfAr' target='_blank'>@RubyconfAr</a>",
    avatar_size: 28,
    count: 1,
    auto_join_text_default: "",
    auto_join_text_ed: "",
    auto_join_text_ing: "",
    auto_join_text_reply: "",
    auto_join_text_url: "",
    loading_text: "Loading tweets..."
  });

  // #locale_selector 

  
});
