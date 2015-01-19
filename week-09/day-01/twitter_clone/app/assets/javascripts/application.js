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
//= require jquery_ujs
//= require turbolinks
//= require_tree ./models
//= require_tree ./collections
//= require_tree .

// // Create a collection, starts empty
// var statusesCollection = new Statuses();

// console.log(statusesCollection.length); // 0

// // Listen for when statuses are added to the collection
// statusesCollection.on("add", function(status) {
//   console.log("Status added: " + status.get('content'));
// });

// // Load all statuses from the defined URL - GET /statuses.json
// statusesCollection.fetch().then(function() {

//   console.log(statusesCollection.length); // 3

//   // Get the first status from the collection
//   var firstStatus = statusesCollection.at(0);

//   // Change its content
//   firstStatus.set({ content: "Test test test" });

//   // Save it to the server - PUT /statuses/:id
//   firstStatus.save(); // `statusesCollection.sync()` would have achieved the same thing

//   // Create new statuses
//   statusesCollection.create({ username: "FluffyJack", content: "Foo bar foo bar" });
//   statusesCollection.create({ username: "FluffyJack", content: "Learn you some backbone.js" });

//   // Create a new status outside of the collection
//   var myStatus = new Status();
//   myStatus.set({ username: "FluffyJack", content: "These words are my own!" });
//   myStatus.save(); // POST /statuses

//   // Destroy a status
//   myStatus.destroy(); // DELETE /statuses/:id

// });
