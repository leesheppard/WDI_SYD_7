window.onload = function() {
  alert("loaded");

  var fadeOut = function(element) {
    var opacity = 1;

    var fadePart = function() {
      opacity -= 0.005;
      element.setAttribute("style", "opacity: " + opacity + ";");

      if (opacity > 0) {
        setTimeout(fadePart, 10);
      }
    }

    fadePart();
  }

  var h1 = document.getElementById("home_header");
  h1.onclick = function() {
    fadeOut(h1);
  }

  document.body.onclick = function() { fadeOut(document.body); }
}

  // document.body.onclick = function() {
  //   alert("Body clicked");
  // }

  // document.getElementById("email").onfocus = function() {
  //   var nameField = document.getElementById("name");
  //   var emailField = document.getElementById("email");

  //   validatesPresence(nameField);
  //   validatesPresence(emailField);
  // }

  // var validatesPresence = function(puppies) {
  //   if (puppies.value.length === 0) {
  //     puppies.setAttribute("style", "border: 1px solid red;");
  //   } else {
  //     puppies.setAttribute("style", "border: 1px solid black;");
  //   }
  // }