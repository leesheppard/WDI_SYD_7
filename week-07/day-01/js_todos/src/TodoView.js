var TodoView = function(todo) {
  this.todo = todo;
};

TodoView.prototype.render = function() {
  var el = document.createElement('div');
  el.className = "todo-item";

  var todoTextElement = document.createElement('p');
  todoTextElement.innerHTML = this.todo.text;

  var todoInfoElement = document.createElement('span');
  todoInfoElement.innerHTML = "Created at: " + this.todo.createdAt.toLocaleString();

  el.appendChild(todoTextElement);
  el.appendChild(todoInfoElement);

  return el;
};