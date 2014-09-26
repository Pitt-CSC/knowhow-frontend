`import DS from 'ember-data'`

Category = DS.Model.extend {
  title: DS.attr('string')
  articles: DS.hasMany('article')
}

`export default Category`
