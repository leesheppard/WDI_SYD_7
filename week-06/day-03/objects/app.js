var App = function() {}

App.prototype.boot = function() {
  this.pullInitalData();
}

App.prototype.pullInitalData = function() {
  alert("Pulling data from " + this.dataURL)
}

var puppy = new App();
puppy.boot();
puppy.dataURL = "http://localhost:3000/puppies";
