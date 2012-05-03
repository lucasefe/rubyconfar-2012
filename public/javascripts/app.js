$(function() {
  $('#subscriptor_container form').live('submit', function(){
    $.post(this.action, $(this).serialize(), function(data, textStatus, jqXHR) {
      $('#subscriptor_container').html(data)
    })
      
    return false
  })
})