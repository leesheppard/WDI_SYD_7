$(function() {
  $("a").on("click", function() {
    console.log("test");
  });

  var validate = function(value, selector) {
    if (value === "") {
      $(selector).siblings("span").text("required");
      return false;
    } else {
      $(selector).siblings("span").text("");
      return true;
    }
  }

  $("#the-form").on("submit", function(event) {
    var firstNameValue = $("#user_first_name").val();
    var lastNameValue = $("#user_last_name").val();

    var firstValid = validate(firstNameValue, "#user_first_name");
    var lastValid = validate(lastNameValue, "#user_last_name");

    if (!firstValid || !lastValid) {
      event.preventDefault();
    }
  });
});







