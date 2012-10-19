$(function(){
  flickrFeed("#photos .slides_container");
  twitterFeed("#tweets");
  slideIt("#photos .slides_container");
  slideIt("#announcements");
})

function twitterFeed(container) {
  $(container).tweet({
    avatar_size: 40,
    count: 7,
    query: "#RubyConfAr",
    loading_text: "searching twitter..."
  });
}

function flickrFeed(container) {
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
  });
}

function slideIt(container) {
  $(container).slides({
    generatePagination: false
  });
}

function createSubcontainer(container) {
  c = $('<div class="slide"></div>')
  c.appendTo(container);
  return(c);
}