var Car = function(name, make, model) {
  this.name = name
  this.make = make
  this.model = model
}

Car.prototype.drive = function() {
  console.log(this.name + " is driving");
}