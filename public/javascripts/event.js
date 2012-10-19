$(function(){
  flickrFeed();
  twitterFeed();
  
  $("#announcements").slides({
    generatePagination: false,
    effect: 'fade',
    play: 3000
  });

})

function twitterFeed() { 
  $("#tweets").tweet({
    avatar_size: 40,
    count: 7,
    query: "#RubyConfAr",
    loading_text: "searching twitter..."
  });
}

function flickrFeed() {
  var container = "#photos .slides_container"
  var url = "http://api.flickr.com/services/feeds/groups_pool.gne?id=2068965@N25&format=json&jsoncallback=?"
  $.getJSON(url, function(data) {

    var j = 0; 
    var current_container = null;

    $.each(data.items, function(i, item){  
      if (j % 3 === 0) {
        current_container = createSubcontainer(container)
      }

      $("<img/>").attr("src", item.media.m).appendTo(current_container).wrap("<a href='" + item.link + "'></a>");

      j++;
    });

    $("#photos").slides({
      generatePagination: false,
      play: 5000
    });
  });
}

function createSubcontainer(container) {
  c = $('<div class="slide"></div>')
  c.appendTo(container);
  return(c);
}