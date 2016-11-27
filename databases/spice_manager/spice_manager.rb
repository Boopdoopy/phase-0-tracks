require 'sqlite3'
require './spice_functions'


# 1. Create tables
#   a.ingredients
#   b.shelves
#   c.cuisines
#   d.trinities?
table_structure = {
  :'ingredients' => [
    "type VARCHAR(255),",
    "shelf_id INTEGER,",
    "FOREIGN KEY (shelf_id) REFERENCES shelves(id)"
    ],
  :'shelves' => [
    "location VARCHAR(255)"
    ],
  :'cuisines' => [
    "father VARCHAR(255),",
    "son VARCHAR(255),",
    "holy_ghost VARCHAR(255)"
    ],
  :'cuisine_ingredients' => [
    "cuisine_id INTEGER,",
    "ingredient_id INTEGER,",
    "FOREIGN KEY (cuisine_id) REFERENCES cuisines(id)",
    "FOREIGN KEY (ingredient_id) REFERENCES ingredients(id)"
  ]
}
databaisse = SQLite3::Database.new("spice_manager.db")
databaisse.results_as_hash = true
#like bouillabaisse get it?



#make all the tables
startup_tables = hash_to_table(table_structure)
startup_tables.each do |cmd|
  databaisse.execute(cmd)
end

# new_shelf(databaisse,"Top shelf","pantry")
# # databaisse.execute(top_pantry)
# # p top_pantry

# new_stock(databaisse,"Thyme","Herb","1")
# # databaisse.execute(thyme)
# # p thyme

# new_cuisine(databaisse,"Greek","lemon","olive oil","oregano")
# # databaisse.execute(greek)
# # p greek

# food = databaisse.execute("SELECT * FROM ingredients")
# puts food




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





