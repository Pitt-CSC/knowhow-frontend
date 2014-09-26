`import Ember from 'ember'`

IndexRoute = Ember.Route.extend {
  model: (params)->
    @store.find 'category'
}

`export default IndexRoute`
