`import Ember from 'ember'`

CollectionsShowRoute = Ember.Route.extend
  model: (params)->
    @store.find 'collection', params.id

`export default CollectionsShowRoute`
