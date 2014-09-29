`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'index', path: '/'
  @resource 'categories', ->
    @route 'show', path: ':id'
    @route 'new',  path: 'new'
  @resource 'collections', ->
    @route 'show', path: ':id'
    @route 'new',  path: 'new'
  @resource 'articles', ->
    @route 'show', path: ':id'
  @route 'categories/show'
  @route 'categories/new'
  @route 'collections/new'
  @route 'collections/show'

`export default Router`
