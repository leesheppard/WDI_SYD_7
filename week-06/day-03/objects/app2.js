var puppy = {
  dataURL: "http://localhost:3000/puppies",

  boot: function() {
    this.pullInitialData();
  },

  pullInitialData: function() {
    alert("Pulling data from " + this.dataURL)
  }
}

puppy.boot();