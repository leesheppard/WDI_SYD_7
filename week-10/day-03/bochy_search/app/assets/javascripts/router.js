var App = App || {};

App.Router = Backbone.Router.extend({
  routes: {
    '': 'homePage'
  },

  homePage: function() {
    var peopleCollection = new App.People();
    peopleCollection.fetch().then(function() {
      var peopleView = new App.PeopleView({ collection: peopleCollection });
      $("#container").html(peopleView.render().el);
    });
  }
});
App.router = new App.Router();