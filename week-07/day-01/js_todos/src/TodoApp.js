var TodoApp = function() {
  this.todos = [
    new Todo({ text: "Do the dishes" }),
    new Todo({ text: "Hangout out the washing" }),
    new Todo({ text: "Learn JavaScript" })
  ];
};

TodoApp.prototype.start = function() {
  var todoListView = new TodoListView();
  todoListView.container = document.getElementById("todo-list");
  todoListView.render(this.todos);
};








