`import DS from 'ember-data'`

CategorySerializer = DS.RESTSerializer.extend

  normalizeHash:
    categories: (hash)->
      hash.id = hash._id
      delete hash._id
      return hash
    category: (hash)->
      hash.id = hash._id
      delete hash._id
      return hash

`export default CategorySerializer`
