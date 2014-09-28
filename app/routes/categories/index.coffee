`import Ember from 'ember'`

CategoriesIndexRoute = Ember.Route.extend
  model: (params)->
    @store.find 'category'


`export default CategoriesIndexRoute`
