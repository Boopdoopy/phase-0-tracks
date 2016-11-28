require 'sqlite3'
require './spice_functions'
require './cuisine_data'

databaisse = SQLite3::Database.new("spice_manager.db")

print "Welcome to Spice Manager!\n"
new_user(databaisse)
choice = "M"
until choice == "E"
  #TO DO: Tutorial page
  choice = menu_template
  case choice
    when "V"
      sub_choice = menu_template("View Menu",["Ingredients","Shelves","Cuisines","Main Menu"])
      case sub_choice
        when "I"
           ingr_inventory = inventory(databaisse)
           ingr_inventory.flatten.each{|x|puts "#{x}"}
        when "S"
           shelf_inventory = inventory(databaisse,"shelves")
           shelf_inventory.flatten.each{|x|puts "#{x}"}
        when "C"
           cuisine_inventory = inventory(databaisse,"cuisines")
           cuisine_inventory.flatten.each{|x|puts "#{x}"}
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
          shelf_id = shelf_ident(databaisse,input_getter("shelf are you storing it on?"))
          new_stock(databaisse,name_of_i,type_of_i, shelf_id)
          print inventory(databaisse)
        when "S"
          shelf_name = input_getter("is the name of the shelf")
          new_shelf(databaisse, shelf_name)
          print inventory(databaisse,"shelves")
        when "C"
          cusine_name = input_getter("is the name of the cuisine")
          father = input_getter("is the first staple ingredient")
          son = input_getter("is the second staple ingredient")
          holy_ghost = input_getter("is the last staple ingredient")
          technique = input_getter("is the cooking technique")
          new_cuisine(databaisse, cusine_name,father,son,holy_ghost,technique)
          print inventory(databaisse,"cuisines")
        else
          next
      end
    when "R"
      sub_choice = menu_template("Remove Menu",["Ingredient","Shelf","Cuisine","Main Menu"])
      case sub_choice
        when "I"
          name_of_i = input_getter("is the name of the ingredient")
          delete(databaisse,name_of_i,"ingredients")
          print inventory(databaisse)
        when "S"
          shelf_name = input_getter("is the name of the shelf")
          delete(databaisse,shelf_name,"shelves")
          print inventory(databaisse,"shelves")
        when "C"
          cusine_name = input_getter("is the name of the cuisine")
          delete(databaisse,cusine_name,"cuisines")
          print inventory(databaisse,"cuisines")
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
