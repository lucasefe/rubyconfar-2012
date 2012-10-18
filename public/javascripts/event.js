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
  $.getJSON(url, function(data){
    $.each(data.items, function(i,item){
      $("<img/>").attr("src", item.media.m)
        .appendTo(container)
        .wrap("<div><a href='" + item.link + "'></a></div>");
    });
  });
}

function slideIt(container) {
  $(container).slides({
    generatePagination: false
  });
}