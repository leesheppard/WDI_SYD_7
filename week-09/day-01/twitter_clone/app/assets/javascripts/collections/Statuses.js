var Statuses = Backbone.Collection.extend({
  model: Status,
  url: '/statuses'
});