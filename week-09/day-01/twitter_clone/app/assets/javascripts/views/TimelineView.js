var TimelineView = Backbone.View.extend({
  tagName: "div",
  className: "timeline",

  initialize: function() {
    this.collection.fetch();
    this.collection.on("add", this.addStatus, this);
  },

  addStatus: function(status) {
    var statusView = new StatusView({ model: status });
    this.$el.append(statusView.render().el);
  }
});