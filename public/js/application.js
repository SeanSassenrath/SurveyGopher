$(document).ready(function() {

  $('.btn').on('click', function(e) {
    e.preventDefault();
    var ajaxResponse = $.ajax({
      type: "POST",
      url: $(this).parent().attr("action"),
      // dataType: "json",
      data: $(this).serialize()
    })
    .done(function(response) {
        $('.survey_list').append(response);
        $('input[name="question_content"]').append(response);
    })
  });
});

$(document).ready(function() {
  $(window).on('click', function(e) {
    $('.huge_gopher img').show();
    $('.huge_gopher img').animate( {left: '80%'}, 3000);
    setTimeout(function(){ $('.huge_gopher img').hide() }, 3000);
    setTimeout(function(){ $('.huge_gopher img').css('left', '-90%') }, 4000);
  });
});
