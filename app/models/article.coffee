`import DS from 'ember-data'`

Article = DS.Model.extend {
  title: DS.attr('string')
  category: DS.belongsTo('category')
}

`export default Article`
