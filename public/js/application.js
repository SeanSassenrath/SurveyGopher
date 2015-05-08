$(document).ready(function() {
  $(window).on('click', function(event){
      $('.huge_gopher img').show()
      $('.huge_gopher img').animate({left:'80%'}, 3000);
      setTimeout(function(){ $('.huge_gopher img').hide() }, 3000);
      setTimeout(function(){ $('.huge_gopher img').css('left', '-90%')}, 4000);
  });
});
