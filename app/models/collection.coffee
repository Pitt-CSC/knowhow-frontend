`import DS from 'ember-data'`

Collection = DS.Model.extend {
  title: DS.attr 'string'
  articles: DS.hasMany 'article'
  category: DS.belongsTo 'category', async: true
}

`export default Collection`
