`import Ember from 'ember'`

ApplicationView = Ember.View.extend

  didInsertElement: ->
    $(document).foundation()

`export default ApplicationView`
