`import Ember from 'ember'`

BlockGridTileComponent = Ember.Component.extend

  tagName: 'li'
  classNameBindings: [':tile', 'expanded']

  expanded: false
  followingElement: null

  # Properties
  title: (->
    @get('model').get('title')
  ).property 'model'

  hoverTimer: null
  isHovering: (->
    timer = @get 'hoverTimer'
    timer?
  ).property 'hoverTimer'

  # mouseEnter: ->
  #   @hoverTimer = setTimeout =>
  #     @set 'expanded', true
  #     @addFollowingElement()
  #   , 1000

  mouseLeave: ->
    clearTimeout @hoverTimer
    @set 'expanded', false
    @destroyFollowingElement()


  addFollowingElement: ->
    @followingElement = $('<li></li>')
    @followingElement.insertAfter @$()

  destroyFollowingElement: ->
    @followingElement?.remove()

  click: ->
    console.debug 'clicked!'
    @sendAction 'clickAction', @get('model')

`export default BlockGridTileComponent`
