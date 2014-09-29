`import DS from 'ember-data'`

Article = DS.Model.extend {
  title:      DS.attr 'string'
  collection: DS.belongsTo 'collection'
}

`export default Article`
