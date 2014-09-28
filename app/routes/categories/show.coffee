`import Ember from 'ember'`

CategoriesShowRoute = Ember.Route.extend
  model: (params)->
    @store.find 'category', params.id

`export default CategoriesShowRoute`
