var TwitterCloneApp = TwitterCloneApp || {};

TwitterCloneApp.AppRouter = Backbone.Router.extend({
  statusesCollection: new TwitterCloneApp.Statuses(),

  openPage: function(url) {
    this.navigate(url, { trigger: true });
  },

  routes: {
    "": "home",
    "about": "aboutPage",
    ":username": "filterUser",
    "*404": "notFound"
  },

  filterUser: function(username) {
    var timelineView = new TwitterCloneApp.TimelineView({ collection: this.statusesCollection });
    timelineView.username = username;
    timelineView.render();
    $("#container").html(timelineView.el);
  },

  home: function() {
    var timelineView = new TwitterCloneApp.TimelineView({ collection: this.statusesCollection });
    timelineView.render();
    $("#container").html(timelineView.el);
  },

  aboutPage: function() {
    $("#container").html(JST['about']());
  },

  notFound: function() {
    $("#container").html(JST['404']());
  }
});











