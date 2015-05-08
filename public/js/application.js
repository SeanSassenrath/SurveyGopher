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

var addQuestion = function(data) {
  // data = JSON.parse(data)

};
