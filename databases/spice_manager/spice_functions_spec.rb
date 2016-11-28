require 'sqlite3'
require './spice_functions'
describe Kitchen do
  let(:trainer_cook){Tester.new}
  let(:testabase){SQLite3::Database.new("testabase.db")}
  


it "cleans up my rspec by dropping tables" do
 testabase.execute("DROP TABLE IF EXISTS ingredients")
 testabase.execute("DROP TABLE IF EXISTS cuisines")
 testabase.execute("DROP TABLE IF EXISTS shelves")
 expect(testabase.execute("
      SELECT name 
        FROM sqlite_master 
        WHERE type='table' 
        AND name='table_name'")).to eq([])
#That was significantly more difficult than I thought
end

#huh so execute returns an empty array
# it "sends the cmd to add an ingredient" do
#   testabase.execute("CREATE TABLE IF NOT EXISTS ingredients(id INTEGER PRIMARY KEY, name VARCHAR(255), type VARCHAR(255), shelf_id INTEGER)")
#    out = trainer_cook.new_stock(testabase,"Thyme","Herb","1")
#      expect(out).to eq "INSERT INTO ingredients (name, type, shelf_id) VALUES (\"Thyme\",\"Herb\",1);"

#  end

# it "sends the cmd to add a cuisine" do
#   out = trainer_cook.new_cuisine("Greek","lemon","olive oil","oregano")
#   expect(out).to eq "INSERT INTO cuisines (name, father, son, holy_ghost) VALUES (\"Greek\",\"lemon\",\"olive oil\",\"oregano\");"
# end
#this is what nightmares are made of
  # it "returns a hash of all ingredients" do
  #   # testabase = SQLite3::Database.new("testabase.db")
  #   # #testabase.results_as_hash = true
  #   trainer_cook.new_stock(testabase,"Thyme","Herb","1")
  #   trainer_cook.new_stock(testabase,"Sage","Herb","1")
  #   trainer_cook.new_stock(testabase,"Paprika","Spice","2")
  #   expect(trainer_cook.ingredients(testabase,"all")).to eq([
  #     {"id"=>1, "name"=>"Thyme", "type"=>"Herb", "shelf_id"=>1, 0=>1, 1=>"Thyme", 2=>"Herb", 3=>1},
  #     {"id"=>2, "name"=>"Sage", "type"=>"Herb", "shelf_id"=>1, 0=>2, 1=>"Sage", 2=>"Herb", 3=>1},
  #     {"id"=>3, "name"=>"Paprika", "type"=>"Spice", "shelf_id"=>1, 0=>3, 1=>"Paprika", 2=>"Spice", 3=>1}])
  # end
    # it "returns the shelf_id for a given shelf name" do
    #   #testabase.results_as_hash = true
    #   testabase.execute("CREATE TABLE IF NOT EXISTS ingredients(id INTEGER PRIMARY KEY, name VARCHAR(255), type VARCHAR(255), shelf_id INTEGER)")
    #   testabase.execute("CREATE TABLE IF NOT EXISTS shelves(id INTEGER PRIMARY KEY, name VARCHAR(255))")
    #   trainer_cook.new_shelf(testabase,"Top shelf of pantry")
    #   trainer_cook.new_stock(testabase,"Thyme","Herb","1")
    #   trainer_cook.new_stock(testabase,"Sage","Herb","1")
    #   trainer_cook.new_stock(testabase,"Paprika","Spice","2")
    #   expect(trainer_cook.on_shelf(testabase, "Top shelf of pantry")).to eq([{"id"=>1, 0=>1}])

    # end

    it "returns the contents of inputted shelf" do
      #testabase.results_as_hash = true
      testabase.execute("CREATE TABLE IF NOT EXISTS ingredients(id INTEGER PRIMARY KEY, name VARCHAR(255), type VARCHAR(255), shelf_id INTEGER)")
      testabase.execute("CREATE TABLE IF NOT EXISTS shelves(id INTEGER PRIMARY KEY, name VARCHAR(255))")
      trainer_cook.new_shelf(testabase,"Top shelf of pantry")
      trainer_cook.new_stock(testabase,"Thyme","Herb","1")
      trainer_cook.new_stock(testabase,"Sage","Herb","1")
      trainer_cook.new_stock(testabase,"Paprika","Spice","2")
      expect(trainer_cook.on_shelf(testabase, "Top shelf of pantry")).to eq([[1,"Thyme","Herb",1],[2,"Sage","Herb",1]])
      

    end
    it "returns the shelf that an ingredient is on" do
      #testabase.results_as_hash = true
      expect(trainer_cook.where_is(testabase,"Thyme")).to eq(["Top shelf of pantry"])

    end

    it "returns true if a ingredient is present" do
      #testabase.results_as_hash = true
      expect(trainer_cook.do_i_have(testabase,"Thyme")).to eq true
    end

    it "returns false if an ingredient isn't present" do
      #testabase.results_as_hash = true
      expect(trainer_cook.do_i_have(testabase,"Garlic")).to eq false
    end

    it "returns an array of the holy trinity" do
      #testabase.results_as_hash = true
      testabase.execute("CREATE TABLE IF NOT EXISTS cuisines(
                          id INTEGER PRIMARY KEY, 
                          name VARCHAR(255), 
                          father VARCHAR(255), 
                          son VARCHAR(255), 
                          holy_ghost VARCHAR(255))"
                          )
      trainer_cook.new_cuisine(testabase,"Greek","Lemon","Olive oil","Oregano")
      expect(trainer_cook.holy_trinity_of(testabase,"Greek")).to eq(["Lemon","Olive oil","Oregano"])
    end

    it "removes an ingredient and returns true" do
      #testabase.results_as_hash = true
      expect(trainer_cook.delete(testabase,"Thyme","ingredients")).to eq true
      expect(trainer_cook.do_i_have(testabase,"Thyme")).to eq false
    end

    it "returns false if trying to delete non-existant ingredient" do
      #testabase.results_as_hash = true
      expect(trainer_cook.delete(testabase,"Garlic","ingredients")).to eq false
    end

    it "returns a hash with cuisine keys and ingredient array values" do
      #testabase.results_as_hash = true
      trainer_cook.new_stock(testabase,"Lemon","Produce","3")
      trainer_cook.new_stock(testabase,"Olive oil","Oil","4")
      trainer_cook.new_stock(testabase,"Oregano","Herb","1")
      expect(trainer_cook.menu_options(testabase)).to eq ({
        "Greek" => ["Lemon","Olive oil", "Oregano"]
        })
    end

    it "returns a hash with cuisine keys and missing ingredient array values" do
      trainer_cook.new_cuisine(testabase,"Creole","Bell pepper","Onion","Celery")
      trainer_cook.new_stock(testabase,"Bell pepper","Produce","3")
      expect(trainer_cook.shopping_list(testabase,"Bell pepper")).to eq ({"Creole"=>["Onion","Celery"]})
    end





end