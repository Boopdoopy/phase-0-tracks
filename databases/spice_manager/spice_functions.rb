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


def new_shelf(name,location)
  base_cmd = ["INSERT INTO ", " VALUES",";"]
  base_cmd.insert(1,"shelves")
  base_cmd.insert(2," (name, location)")
  base_cmd.insert(4," (\"#{name}\",\"#{location}\")")
  result = base_cmd.join
end 

def new_stock(name,type,shelf_id)
end

def new_cuisine(name,father,son,holy_ghost)
end

end

class Tester
  include Kitchen
end
# 2.Functions to add
#   a. ingredients (compares to cuisines?)
#     i.input: name, type, shelf_id
#     ii.output: "INSERT..." etc
#   b. shelves
#     i.input: name, location
#     ii.output: "INSERT..." etc
#   c. cuisines (private?)
#     i.input: name, ing1, 2 , 3

