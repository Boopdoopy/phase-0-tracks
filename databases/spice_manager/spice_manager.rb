require 'sqlite3'


# 1. Create tables
#   a.ingredients
#   b.shelves
#   c.cuisines
#   d.trinities?

databaisse = SQLite3::Database.new("spice_manager.db")
databaisse.results_as_has = true
#like bouillabaisse get it?




# 2.Functions to add
#   a. ingredients
#     i.input: name, type, shelf_id
#     ii.output: "INSERT..." etc
#   b. shelves
#     i.input: name, location
#     ii.output: "INSERT..." etc
#   c. cuisines (private?)
#     i.input: name, ing1, 2 , 3
# 3.Functions to remove
#   a. ingredients
#     i.input: name
#     ii.output: "DELETE FROM..."etc
# 4.Functions to view
#   a. ingredients
#     i.input: type
#     ii.output:array of ingredients
#   b. shelves
#     i.input: shelf.name
#     ii.output: hash of ingrediants with shelf.name as key
#   c. cuisines
#     i.input: name
#     ii.output: array of trinity
# 5.Functions to compare/analyze
#   a. What can I make with what's here?
      # i.input:ingredient(s table), cuisines table
      #   -iterate through cuisines
      #   -compare all ingredients to trinities
      #   -on complete match store cuisine name in hash 
      #     -with value as array of ingredients
      #   -return hash
      # ii.output:hash
#   b. What do I need In order to use x?
      # i.input:ingredient.name, cuisine table
      #   -run what can I make with whats here for ingredient
      #   -store returned hash in "have all things" 
      #   -iterate through cuisines
      #   -compare keys from HaTh on match continue
      #   -else compare ingredient to trinities
      #   -on match store name of cuisine as key 
      #     in hash ("don't have all the things")
      #   -with value as array of all 
      #     non-ingrediant.name items
      #   -combine hashes with deliniation of results
      # ii.output: return hash





