require 'sqlite3'
require './spice_functions'
describe Kitchen do
  let(:trainer_cook){Tester.new}
  let(:testabase){SQLite3::Database.new("testabase.db")}
  before(:each){testabase.execute("DROP TABLE IF EXISTS ingredients")}
  before(:each){testabase.execute("DROP TABLE IF EXISTS cuisines")}
  before(:each){testabase.execute("DROP TABLE IF EXISTS shelves")}


# it "sends the cmd to add a shelf" do
#   out = 
#   expect(out).to eq "INSERT INTO shelves (name) VALUES (\"Top\",\"Spice Cabinet\");"
# end

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
  #   # testabase.results_as_hash = true
  #   trainer_cook.new_stock(testabase,"Thyme","Herb","1")
  #   trainer_cook.new_stock(testabase,"Sage","Herb","1")
  #   trainer_cook.new_stock(testabase,"Paprika","Spice","2")
  #   expect(trainer_cook.ingredients(testabase,"all")).to eq([
  #     {"id"=>1, "name"=>"Thyme", "type"=>"Herb", "shelf_id"=>1, 0=>1, 1=>"Thyme", 2=>"Herb", 3=>1},
  #     {"id"=>2, "name"=>"Sage", "type"=>"Herb", "shelf_id"=>1, 0=>2, 1=>"Sage", 2=>"Herb", 3=>1},
  #     {"id"=>3, "name"=>"Paprika", "type"=>"Spice", "shelf_id"=>1, 0=>3, 1=>"Paprika", 2=>"Spice", 3=>1}])
  # end
    # it "returns the shelf_id for a given shelf name" do
    #   testabase.results_as_hash = true
    #   testabase.execute("CREATE TABLE IF NOT EXISTS ingredients(id INTEGER PRIMARY KEY, name VARCHAR(255), type VARCHAR(255), shelf_id INTEGER)")
    #   testabase.execute("CREATE TABLE IF NOT EXISTS shelves(id INTEGER PRIMARY KEY, name VARCHAR(255))")
    #   trainer_cook.new_shelf(testabase,"Top shelf of pantry")
    #   trainer_cook.new_stock(testabase,"Thyme","Herb","1")
    #   trainer_cook.new_stock(testabase,"Sage","Herb","1")
    #   trainer_cook.new_stock(testabase,"Paprika","Spice","2")
    #   expect(trainer_cook.on_shelf(testabase, "Top shelf of pantry")).to eq([{"id"=>1, 0=>1}])

    # end

    it "returns the contents of inputted shelf" do
      testabase.results_as_hash = true
      testabase.execute("CREATE TABLE IF NOT EXISTS ingredients(id INTEGER PRIMARY KEY, name VARCHAR(255), type VARCHAR(255), shelf_id INTEGER)")
      testabase.execute("CREATE TABLE IF NOT EXISTS shelves(id INTEGER PRIMARY KEY, name VARCHAR(255))")
      trainer_cook.new_shelf(testabase,"Top shelf of pantry")
      trainer_cook.new_stock(testabase,"Thyme","Herb","1")
      trainer_cook.new_stock(testabase,"Sage","Herb","1")
      trainer_cook.new_stock(testabase,"Paprika","Spice","2")
      expect(trainer_cook.on_shelf(testabase, "Top shelf of pantry")).to eq([
      {"id"=>1, "name"=>"Thyme", "type"=>"Herb", "shelf_id"=>1, 0=>1, 1=>"Thyme", 2=>"Herb", 3=>1},
      {"id"=>2, "name"=>"Sage", "type"=>"Herb", "shelf_id"=>1, 0=>2, 1=>"Sage", 2=>"Herb", 3=>1}])

    end

end