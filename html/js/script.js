$(function() {
  window.addEventListener('message', function(event) {
      const id = event.data.id
      const spillere = event.data.spillere
      $('#watermark').html("<h3>Online spillere: "+ spillere +" | Dit ID: "+ id +"</h3>");
  });
});