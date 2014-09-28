`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'index', path: '/'
  @resource 'categories', ->
    @route 'show', path: ':id'
  @resource 'collections', ->
    @route 'show', path: ':id'
  @resource 'articles', ->
    @route 'show', path: ':id'
  @route 'categories/show'

`export default Router`
