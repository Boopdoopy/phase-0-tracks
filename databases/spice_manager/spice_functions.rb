def hash_to_table(tables)
    create_table_array = Array.new
    content_string = String.new
    tables.each do |table_name,columns|
      content_string = "CREATE TABLE IF NOT EXISTS #{table_name}(id INTEGER PRIMARY KEY,name VARCHAR(255),"
          columns.each do |column_name|
            content_string << column_name
          end
          content_string << ")"
      create_table_array << content_string
    end
    return create_table_array
end 

module Kitchen
def new_shelf(db, shelf_name)
  db.execute("INSERT INTO shelves(name) VALUES (\"#{shelf_name}\")")
end

def new_stock(db, name, type, shelf_id)
  db.execute("INSERT INTO ingredients (name, type, shelf_id) VALUES (?, ?, ?)", [name, type, shelf_id])
end

def new_cuisine(db, name, father, son, holy_ghost)
  db.execute("INSERT INTO cuisines (name, father, son, holy_ghost) VALUES (?, ?, ?, ?)", [name, father, son, holy_ghost])
end
#Returns an empty array


def inventory(db,store="ingredients", category="all")
    if category == "all" or store != "ingredients"
      db.execute("SELECT #{store}.name FROM #{store}")
    else
      db.execute("SELECT #{store}.name FROM #{store} WHERE type=\"#{category}\"")
    end
end
#Returns an array of arrays 


def on_shelf(db, shelf_name)
  shelf = (
    "SELECT shelves.id 
      FROM shelves 
        WHERE name=\"#{shelf_name}\""
        )
  shelf_id = db.execute(shelf)                                        
  shelf_contains = db.execute(
    "SELECT * 
      FROM ingredients        
        WHERE shelf_id=#{shelf_id[0][0]}"
        ) #the array of hashes is not good for readability
end
#Returns an array with a hash for each ingredient

def where_is(db, ingr_name)
  #take ingr name
  #get shelf id
  #take shelf id
  #get shelf
  #return shelf
    ingr_name = (
    "SELECT DISTINCT shelves.name
      FROM shelves 
        INNER JOIN ingredients 
        ON ingredients.shelf_id = shelves.id 
          WHERE ingredients.name=\"#{ingr_name}\""
        )
    db.execute(ingr_name).flatten
end
#Returns an array with a hash of shelf name and 0=>shelf name

def do_i_have(db, ingr_name,table="ingredients")
  #take ingr name
  #query
  #return true if found, else false
  found = db.execute(
    "SELECT #{table}.name
      FROM #{table}"
      )
  found.flatten.include?(ingr_name)
end

def holy_trinity_of(db,cuisine_name)
  trinity = db.execute(
    "SELECT cuisines.father, cuisines.son, cuisines.holy_ghost
      FROM cuisines
      WHERE cuisines.name=\"#{cuisine_name}\""
    )
  trinity.flatten
end

def delete(db, ingr_name,table)
  if do_i_have(db,ingr_name,table)
    db.execute(
      "DELETE FROM #{table}
        WHERE #{table}.name =\"#{ingr_name}\"")
    true
  else
    false
  end
end


def menu_options(db)
  hand_of_cards = inventory(db)
  hand_of_cards.flatten!

  three_of_a_kind = Hash.new
  scoring_hands = inventory(db,"cuisines").flatten
  scoring_hands.each do |cuisine_name|
    flop = holy_trinity_of(db,cuisine_name)
    bet = 0
    flop.each do |lucky_card|
      if hand_of_cards.include?(lucky_card)
        bet += 1
      end
    end
    if bet == 3
      three_of_a_kind.store(cuisine_name,flop)
    end
  end
  three_of_a_kind
end

def shopping_list(db, lonely_ingr)
  buy_list = db.execute(
    "SELECT cuisines.name
      FROM cuisines 
        WHERE cuisines.father=\"#{lonely_ingr}\" 
        OR cuisines.son=\"#{lonely_ingr}\" 
        OR cuisines.holy_ghost=\"#{lonely_ingr}\""
    ).flatten
  result_hash = Hash.new
  buy_list.each do |cuisine|
    ingr_array = holy_trinity_of(db,cuisine)
    ingr_array.select!{|ingredient|ingredient != lonely_ingr}
    result_hash.store(cuisine,ingr_array)
  end
  result_hash
end






end






#My tester wrapper=====================
class Tester
  include Kitchen
end
#My tester wrapper=====================

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
# 2.Functions to add
#   a. ingredients (compares to cuisines?)
#     i.input: name, type, shelf_id
#     ii.output: "INSERT..." etc
#   b. shelves
#     i.input: name 
#     ii.output: "INSERT..." etc
#   c. cuisines (private?)
#     i.input: name, ing1, 2 , 3

# module Kitchen

# def new_shelf(name,location)
#   base_cmd = ["INSERT INTO ", " VALUES",";"]
#   base_cmd.insert(1,"shelves")
#   base_cmd.insert(2," (name )")
#   base_cmd.insert(4," (\"#{name}\",\"#{location}\")")
#   result = base_cmd.join
# end 

# def new_stock(name,type,shelf_id)
#   base_cmd = ["INSERT INTO ", " VALUES",";"]
#   base_cmd.insert(1,"ingredients")
#   base_cmd.insert(2," (name, type, shelf_id)")
#   base_cmd.insert(4," (\"#{name}\",\"#{type}\",#{shelf_id})")
#   result = base_cmd.join
# end

# def new_cuisine(name,father,son,holy_ghost)
#   base_cmd = ["INSERT INTO ", " VALUES",";"]
#   base_cmd.insert(1,"cuisines")
#   base_cmd.insert(2," (name, father, son, holy_ghost)")
#   base_cmd.insert(4," (\"#{name}\",\"#{father}\",\"#{son}\",\"#{holy_ghost}\")")
#   result = base_cmd.join
# end
