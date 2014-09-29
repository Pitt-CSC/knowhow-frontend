`import Ember from 'ember'`

CategoriesNewController = Ember.Controller.extend

  categoryTitle: null

  actions:
    saveForm: ->
      title = @get 'categoryTitle'
      category = @store.createRecord 'category',
        title: title
      category.save()
      .then =>
        @transitionToRoute 'categories.show', category
      , (error)->
        console.error error

`export default CategoriesNewController`
