var Status = Backbone.Model.extend({
  urlRoot: '/statuses',

  defaults: {
    username: "Anon",
    content: "Free burrito..."
  }
});
