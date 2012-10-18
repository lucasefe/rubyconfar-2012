$(function(){
  flickrFeed("#photos")
  twitterFeed("#tweets")
})

function twitterFeed(container) {
  $(container).tweet({
    avatar_size: 32,
    count: 4,
    query: "#RubyConfAr",
    loading_text: "searching twitter..."
  });
}

function flickrFeed(container) {
  var url = "http://api.flickr.com/services/feeds/groups_pool.gne?id=2068965@N25&format=json&jsoncallback=?"
  var anstring = String.fromCharCode(38);
  $.getJSON(url, function(data){
    $.each(data.items, function(i,item){
      $("<img/>").attr("src", item.media.m).appendTo(container).wrap("<span></span>");
    });
  });
}