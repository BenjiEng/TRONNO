TrelloClone.Views.CardShow = Backbone.View.extend({
  template: JST['cards/show'],

  className: 'card well well-sm card-display',

  events: {
    'click .card-delete': 'deleteCard',
  },

  initialize: function () {
    this.listenTo(this.model, 'sync change', this.render);
  },

  attributes: function() {
    return {
      'data-card-id': this.model.id
    };
  },

  deleteCard: function (event) {
    event.preventDefault();
    var that = this;
    this.model.destroy();
  },

  render: function() {
    var content = this.template({
      card: this.model
    });
    this.$el.html(content);
    return this;
  },

});
