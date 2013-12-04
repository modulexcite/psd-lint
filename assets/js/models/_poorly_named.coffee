App.module "Models", (Models, App, Backbone, Marionette, $, _) ->
  class Models.PoorlyNamed extends Backbone.Model
    defaults:
      title: "Poorly named layers"
      view: 'BadLayers'

    countCalc: (d) -> d.length
    grade: (d) =>
      d.length / LNT.getTotalCount(@get('psd')) + .20