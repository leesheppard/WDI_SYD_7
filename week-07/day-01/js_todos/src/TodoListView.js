var TodoListView = function() {};

TodoListView.prototype.render = function(todos) {
  for (i in todos) {
    var aDo = todos[i];
    var todoView = new TodoView(aDo);
    var todoViewElement = todoView.render();
    this.container.appendChild(todoViewElement);
  }
};