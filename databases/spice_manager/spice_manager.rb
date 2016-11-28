require 'sqlite3'
require './spice_functions'
require './cuisine_data'

databaisse = SQLite3::Database.new("spice_manager.db")
#like bouillabaisse get it?



#make all the tables
startup_tables = hash_to_table(TABLE_STRUCTURE)
startup_tables.each do |cmd|
  databaisse.execute(cmd)
end

#consider new file cuisine data which holds
#-table structure
#-cuisine list


#populate cuisine table


#loading screen
#-lists all produce
#-asks whether things are still good

print "Welcome to Spice Manager!\n"
choice = "M"
until choice == "E"
  choice = menu_template
  case choice
    when "V"
      sub_choice = menu_template("View Menu",["Ingredients","Shelves","Cuisines","Main Menu"])
      case sub_choice
        when "I"
          print inventory(databaisse)
        when "S"
          print inventory(databaisse,"shelves")
        when "C"
          print inventory(databaisse,"cuisines")
        else
          next
      end
    when "G"
      sub_choice = menu_template(["Guide Menu","How can I use this?","What can I make with what's here?","Main Menu"])
      case choice
        when "H"
          input = input_getter("ingredient")
          shopping_list(databaisse,input)
        when "W"
          menu_options(databaisse)
        else
          next
      end
    when "A"
      sub_choice = menu_template("Add Menu",["Ingredient","Shelf","Cuisine","Main Menu"])
      case sub_choice
        when "I"
          name_of_i = input_getter("is the name of the ingredient")
          type_of_i = input_getter("type of ingredient(spice, oil, herb, produce)")
          #need function for getting shelf id from name
          new_stock(databaisse,name_of_i,type_of_i, 1)
        when "S"
          shelf_name = input_getter("is the name of the shelf")
          new_shelf(databaisse, shelf_name)
        when "C"
          cusine_name = input_getter("is the name of the cuisine")
          father = input_getter("first staple ingredient")
          son = input_getter("second staple ingredient")
          holy_ghost = input_getter("last staple ingredient")
          new_cuisine(databaisse, cusine_name,father,son,holy_ghost)
        else
          next
      end
    when "R"
      sub_choice = menu_template("Remove Menu",["Ingredient","Shelf","Cuisine","Main Menu"])
      case sub_choice
        when "I"
          name_of_i = input_getter("is the name of the ingredient")
          delete(databaisse,name_of_i,"ingredients")
        when "S"
          shelf_name = input_getter("is the name of the shelf")
          delete(databaisse,shelf_name,"shelves")
        when "C"
          cusine_name = input_getter("is the name of the cuisine")
          delete(databaisse,cusine_name,"cuisines")
        else
          next
      end
    when "F"
      sub_choice = menu_template("Find Menu",["Do I have?","Where is?", "Main Menu"])
      case choice
        when "D"
          input = input_getter("ingredient")
          response = do_i_have(databaisse,input)
          if response == true
            here = where_is(input)
            print "Yup, and it's #{here}"
          else
            print "/n Nope"
          end
        when "W"
          input = input_getter("ingredient")
          print where_is(input)

        else
          next
      end

    when "E"
      print "Remember to clean out your fridge!\nRotting produce will make your whole fridge taste bad!"
      next
    else
      puts "ERROR"
      next
  end
end

#main screen options for: 
#-view all ingredients
#-view contents of shelf
#-find an ingredient
#-view trinity
#-add ingredient
#-add shelf
#-add cuisine
#-remove ingredient
#-remove shelf
#-remove cuisine
#-what can I make with what I have?
    #-shows where each of the things are
#-what do I need to use this?




#goodbye screen
#Remember to clean out your perishables regularly!




















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





