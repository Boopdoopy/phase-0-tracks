def new_shelf(db, shelf_name)
  db.execute("INSERT INTO shelves(name) VALUES (\"#{shelf_name}\")")
end

def new_stock(db, name, type, shelf_id)
  db.execute("INSERT INTO ingredients (name, type, shelf_id) VALUES (?, ?, ?)", [name, type, shelf_id])
end

def new_cuisine(db, name, father, son, holy_ghost,technique)
  db.execute("INSERT INTO cuisines (name, father, son, holy_ghost, technique) VALUES (?, ?, ?, ?, ?)", [name, father, son, holy_ghost, technique])
end

def hash_to_table(tables)
    create_table_array = Array.new
    content_string = String.new
    tables.each do |table_name,columns|
      content_string = "CREATE TABLE IF NOT EXISTS #{table_name}(id INTEGER PRIMARY KEY,name VARCHAR(255)"
          columns.each do |column_name|
            content_string << column_name
          end
          content_string << ")"
      create_table_array << content_string
    end
    return create_table_array
end 

def new_user(db)
table_status = db.execute("
      SELECT name 
        FROM sqlite_master 
        WHERE type='table' 
        AND name='table_name'")
  if table_status == []
    print "Welcome to spice manager!\nJust need to set some stuff up here"
    startup_tables = hash_to_table(TABLE_STRUCTURE)
      startup_tables.each do |cmd|
        db.execute(cmd)
      end
    print "."

    CUISINE_DATA.each do |cuisine_name, aspects_of|
      name=cuisine_name.to_s
      father=String.new
      son=String.new
      holy_ghost=String.new
      technique=String.new
      i = 0
      aspects_of.each do |aspect|
        case i
          when 0
            father = aspect
          when 1
            son = aspect
          when 2
            holy_ghost = aspect
          when 3
            technique = aspect
        end
      end
      new_cuisine(db, name, father, son, holy_ghost,technique)
    end

    print "."
    sleep(0.5)
    print "."
    print "\nThank's for waiting!"


  else
    print "Welcome back!\n"
  end
end


def inventory(db,store="ingredients", category="all")
    if category == "all" or store != "ingredients"
      db.execute("SELECT #{store}.name FROM #{store}")
    else
      db.execute("SELECT #{store}.name FROM #{store} WHERE type=\"#{category}\"")
    end
end 

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
        )
end


def where_is(db, ingr_name)
    ingr_name = (
    "SELECT DISTINCT shelves.name
      FROM shelves 
        INNER JOIN ingredients 
        ON ingredients.shelf_id = shelves.id 
          WHERE ingredients.name=\"#{ingr_name}\""
        )
    db.execute(ingr_name).flatten
end


def do_i_have(db, ingr_name,table="ingredients")
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

def cuisine_technique(db,cuisine_name)
  technique = db.execute(
    "SELECT cuisines.technique 
      FROM cuisines 
        WHERE cuisines.name=\"#{cuisine_name}\"")
  technique.flatten
end

def shelf_ident(db,shelf_name)
  shelf_id = db.execute(
    "SELECT shelves.id
      FROM shelves
        WHERE shelves.name =\"#{shelf_name}\""
    )
  shelf_id.flatten
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

def menu_template (menu_title="Main Menu", array_options=[
    "View","Guide","Add",
    "Remove","Find","Exit"
    ])
  border = "\n-----------------------------------------------------"
  prompt = "\nHow can I help you?\n"

  array_options.each do |option|
    prompt += option.insert(1,")").insert(0," (")
    prompt += " |"
    end
  print menu_title
  print border
  print prompt
  print border
  print "\nINPUT: "
  gets.chomp!.upcase
end

def input_getter(input_type)
  print "What #{input_type}?\nINPUT: "
  gets.chomp!.downcase
end
