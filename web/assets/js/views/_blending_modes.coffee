App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.BlendingModes extends Marionette.CollectionView
    __name__: "Blending Modes"
    constructor: ->
      super

      @collection = new Backbone.Collection _.map(
          @model.get('data'),
          (v, k) ->
            {
              name: k
              layers: v
            }
      )

    getItemView: -> Views.BlendingMode
