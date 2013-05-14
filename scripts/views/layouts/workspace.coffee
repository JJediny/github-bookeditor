define [
  'jquery'
  'underscore'
  'backbone'
  'marionette'
  'cs!views/workspace/search-results'
  'cs!views/workspace/auth'
  'hbs!templates/layouts/workspace'
  'bootstrapDropdown'
], ($, _, Backbone, Marionette, SearchResultsView, AuthView, workspaceTemplate) ->

  return new (Marionette.Layout.extend
    template: workspaceTemplate

    regions:
      auth: '#auth'
      sidebar: '#sidebar'
      content: '#content'

    load: () ->
      #@sidebar.show()
      @auth.show(new AuthView())
      @content.show(new SearchResultsView())
  )()
