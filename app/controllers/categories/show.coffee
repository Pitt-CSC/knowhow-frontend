`import Ember from 'ember'`

CategoriesShowController = Ember.ObjectController.extend

  actions:
    destroy: ->
      if confirm("Are you sure you want to destroy this category?")
        controller = this
        @get('model').destroyRecord().then ->
          controller.transitionToRoute 'categories.index'

    openCollection: (collection)->
      @transitionToRoute 'collections.show', collection

    addCollection: ->
      @send('openModal', 'addCollection')

`export default CategoriesShowController`
