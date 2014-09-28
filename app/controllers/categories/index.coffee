`import Ember from 'ember'`

CategoriesIndexController = Ember.ArrayController.extend

  # Control category sorting
  sortProperties: ['title']
  sortAscending: true

  # Filter to search through categories
  titleFilter: null

  # Returns the content, filtered by the `titleFilter`
  filteredContent: (->
    filter = @get 'titleFilter'
    content = @get 'arrangedContent'

    # If the filter is empty, return the whole content object
    return content if Ember.isNone filter

    # If the filter is not empty, return the filtered object
    return content.filter (item, index, enumerable)->
      return item.get('title').toLowerCase().indexOf(filter.toLowerCase()) > -1

  ).property 'titleFilter', 'arrangedContent'
`export default CategoriesIndexController`
