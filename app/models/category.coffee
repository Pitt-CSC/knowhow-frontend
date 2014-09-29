`import DS from 'ember-data'`

Category = DS.Model.extend {
  title:       DS.attr 'string'
  description: DS.attr 'string'
  collections: DS.hasMany 'collection', async: true
}

`export default Category`
