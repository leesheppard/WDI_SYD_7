// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .







$(function() {
  $("body").on("click", ".todo button", function() {
    var $todo = $(this).parent();
    var todoID = $todo.attr("data-id");

    $todo.hide();

    $.ajax({
      method: "POST",
      url: "/todos/" + todoID,
      dataType: "json",
      data: {
        _method: "DELETE"
      },
      success: function() {
        $todo.remove();     
      },
      error: function() {
        alert("Sorry something went wrong...");
        $todo.show();
      }
    });
  });

  $("#add-todo").on("keypress", function(event) {
    $("body").append("<p data-id=\"" + todo.id + "\" class=\"todo\"><span>" + todo.text + "</span> <button>x</button></p>");

    if (event.keyCode === 13 && $(this).val() !== "") {
      $.ajax({
        method: "POST",
        url: "/todos",
        dataType: "json",
        data: {
          todo: {
            text: $(this).val()
          }
        },
        success: function(todo) {
        }
      });
    }
  });

  $("body").on("click", ".todo span", function() {
    var todoURL = "/todos/" + $(this).parent().attr("data-id");
    // "/todos/11"

    var self = this;

    $.getJSON(todoURL, function(todo) {
      $(self).append("<div>" + todo.notes + "</div>");
    });
  });

  $.getJSON("/todos", function(todos) {
    $.each(todos, function(index, todo) {
      $("body").append("<p data-id=\"" + todo.id + "\" class=\"todo\"><span>" + todo.text + "</span> <button>x</button></p>");
    });
  });
});























// $(function() {
//   $("#add-todo").on("submit", function(event) {
//     var text = $("#todo-text").val();
//     var notes = $("#todo-notes").val();
//     var completed = $("#todo-completed").prop("checked");

//     $.ajax({
//       url: "/todos",
      // method: "POST",
      // dataType: "json",
      // data: {
      //   todo: {
      //     text: text,
      //     notes: notes,
      //     completed: completed
      //   },
      // },
    //   success: function(data) {
    //     console.log(data);
    //   },
    //   failure: function(data) {

    //   }
    // })













    // $.params({ todo:
    //     { text: text,
    //       notes: notes,
    //       completed: completed }
    //     })
    // todo[text]=Do the dishes&todo[notes]=Get liquid

    // $.post("/todos/:id",
    //   { todo:
    //     { text: text,
    //       notes: notes,
    //       completed: completed },
    //       _method: "PATCH"
    //     },
    //     function(data) {
    //       $("body").append("<p>" + data.text + "</p>");
    //     },
    //     "json");

//     event.preventDefault();
//   });
// });






















