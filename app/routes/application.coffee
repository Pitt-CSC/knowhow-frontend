`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend

  actions:

    # Due to the way that Ember allows actions to bubble, we can write these
    # method one time here and call if from any controller or route.  The way
    # that bubbling works, if a view executes an action that the corresponding
    # controller doesn't have define, the action gets passed to the route.  If
    # the route doesn't define the action, then it passes it to the route above
    # it, and so on until the action reaches the Application Route.  Therefore,
    # by defining the method here, we can always use the these actions and have
    # whatever modal is visible disappear.
    openModal: (modalName)->
      @render modalName,
        into: 'application'
        outlet: 'modal'

    closeModal: ->
      @disconnectOutlet
        outlet: 'modal'
        parentView: 'application'

`export default ApplicationRoute`
