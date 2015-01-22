var TwitterCloneApp = TwitterCloneApp || {};

TwitterCloneApp.TimelineView = Backbone.View.extend({
  tagName: "div",
  className: "timeline",

  initialize: function() {
    this.collection.on("add", this.addStatus, this);
  },

  render: function() {
    if (this.username) {
      this.collection.filterByUser(this.username).each(this.addStatus, this);
    } else {
      this.collection.each(this.addStatus, this);
    }
  },

  addStatus: function(status) {
    var statusView = new TwitterCloneApp.StatusView({ model: status });
    this.$el.append(statusView.render().el);
  }
});