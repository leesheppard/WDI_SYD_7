// FUNCTIONS
// var vito = function(greeting) {
//   console.log(greeting + " Vito");
// };

// vito("Hello");

// function vito() { 
// }

// OBJECTS (known as hashes in Ruby)
// var myObject = new Object();
// myObject.jack = "21";

// var myObject = {
//   jack: "21",
//   wolf: "Unknown",
//   displayAges: function(prefix) {
//     console.log(prefix + this.jack);
//     console.log(prefix + this.wolf);
//   }
// }

// myObject.displayAges("They are: ");

// console.log(myObject["jack"]);
// console.log(myObject["wolf"]);

// console.log(Object.keys(myObject));














// CONSTRUCTORS
var Todo = function(attributes) {
  this.text = attributes.text;
  this.createdAt = new Date();
  this.complete = false;
};

var myTodo = new Todo({ text: "Do the dishes" });
console.log(myTodo.text);
console.log(myTodo.createdAt);

// PROTOTYPES

// myTodo.display(); // BAD!!!

Todo.prototype.display = function() {
  console.log("Todo: " + this.text + " - created at " + this.createdAt.toLocaleString());
}

Todo.prototype.checkOff = function() {
  this.complete = !this.complete;
}

myTodo.display();


myTodo.display = function() {
  console.log("NO WAY!");
}

myTodo.display();















