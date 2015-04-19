TrelloClone.Collections.Lists = Backbone.Collection.extend({
  comparator: 'ord', //overrides comparator to use ord from controller
  model: TrelloClone.Models.List,
  url: 'api/lists',

  initialize: function (models, options) {
    this.board = options.board;
  }
});
