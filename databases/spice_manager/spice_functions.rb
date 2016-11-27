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

def new_shelf(db, name )
  db.execute("INSERT INTO shelves (name ) VALUES (?)", [name])
end

def new_stock(db, name, type, shelf_id)
  db.execute("INSERT INTO ingredients (name, type, shelf_id) VALUES (?, ?, ?)", [name, type, shelf_id])
end

def new_cuisine(db, name, father, son, holy_ghost)
  db.execute("INSERT INTO cuisines (name, father, son, holy_ghost) VALUES (?, ?, ?, ?)", [name, father, son, holy_ghost])
end
#Returns an empty array


def ingredients(db, type="all")
    if type == "all"
      db.execute("SELECT * FROM ingredients")
    else
      db.execute("SELECT * FROM ingredients WHERE type=\"#{type}\"")
    end
end
#Returns a hash for each ingredient within an array
module Kitchen
  
def on_shelf(shelf_name)
end

def where_is(ingr_name)
end

def do_i_have(ingr_name)
end

end




#My tester wrapper=====================
class Tester
  include Kitchen
end
#My tester wrapper=====================

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
