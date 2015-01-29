var App = App || {};

App.PeopleView = Backbone.View.extend({

  events: {
    'keyup input': 'search'
  },

  render: function() {

    this.$el.html(JST['app']());

    this.renderCollection(this.collection.toJSON());

    return this;
  },

  renderCollection: function(data) {
    this.$el.find("ul").html(
      JST['people'](
        { people: data }
      )
    );
  },

  search: function() {
    var searchText = this.$el.find("input").val();

    if (searchText === "") {
      this.renderCollection(this.collection.toJSON());
    } else {
      this.renderCollection(
        this.collection.filterBySearch(searchText).toJSON()
      );
    }
  }

});