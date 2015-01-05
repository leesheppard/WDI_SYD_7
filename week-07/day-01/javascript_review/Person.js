var Person = function(attributes) {
  this.name = attributes.name;
  this.age = attributes.age;
  this.gender = attributes.gender;
}

Person.prototype.speak = function() {
  console.log(this.name + " says 'Hello World'");
}

Person.prototype.walk = function() {
  console.log(this.name + " took one step");
}

var jack = new Person({
  name: "Jack Watson-Hamblin",
  age: 21,
  gender: "Male"
});
jack.speak(); // Jack says 'Hello World'
jack.walk();  // Jack took one step