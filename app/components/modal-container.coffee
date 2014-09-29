`import Ember from 'ember'`

ModalContainerComponent = Ember.Component.extend

  didInsertElement: ->
    $(document).keyup (event)=>
      if event.keyCode == 27
        @send 'closeModal'

  actions:
    closeModal: ->
      if !@get 'close'
        @set 'close', 'closeModal'
      @sendAction 'close'

  click: (event)->
    if event.target.classList.contains 'modal-background'
      @send 'closeModal'

`export default ModalContainerComponent`
