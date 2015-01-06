// window.onload = function() {
//   var templateString = _.unescape(document.getElementById("hello-template").innerHTML);
//   // "<p>Hello <%= name %></p>"

//   var helloWorldTemplate = _.template(templateString);
//   var theHTML = helloWorldTemplate({ name: "Jack" });
//   // "<p>Hello Jack</p>"

//   var moreHTML = helloWorldTemplate({ name: "Wolf" });
//   // "<p>Hello Wolf</p>"

//   document.getElementById("container").innerHTML = theHTML + moreHTML;
// }








var Todo = function(text) {
  this.text = text;
  this.createdAt = new Date();
}

window.onload = function() {
  var todos = [
    new Todo("Do the dishes"),
    new Todo("Hang out the washing"),
    new Todo("Learn JavaScript (also known as Java)")
  ];

  var templateString = _.unescape(document.getElementById("todo-template").innerHTML);
  var todoTemplate = _.template(templateString);

  _.each(todos, function(todo) {
    document.getElementById("container").innerHTML += todoTemplate(todo);
  });
}

























