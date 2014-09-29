`import Ember from 'ember'`

CollectionsShowController = Ember.ObjectController.extend

  actions:
    destroy: ->
      if confirm "Are you sure you want to delete this collection?"
        controller = this
        category = @get('model').get('category')
        @get('model').destroyRecord().then ->
          controller.transitionToRoute 'categories.show', category

`export default CollectionsShowController`
