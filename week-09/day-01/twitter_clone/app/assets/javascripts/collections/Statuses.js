var TwitterCloneApp = TwitterCloneApp || {};

TwitterCloneApp.Statuses = Backbone.Collection.extend({
  model: TwitterCloneApp.Status,
  url: '/statuses',

  filterByUser: function(username) {
    var matchedStatuses = this.filter(function(status) {
      return status.get("username") === username;
    });
    return new TwitterCloneApp.Statuses(matchedStatuses);
  }
});