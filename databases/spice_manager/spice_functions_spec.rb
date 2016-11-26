require './spice_functions'
describe Kitchen do
  let(:trainer_cook){Tester.new}

it "sends the cmd to add a shelf" do
  out = trainer_cook.new_shelf("Top","Spice Cabinet")
  expect(out).to eq "INSERT INTO shelves (name, location) VALUES (\"Top\",\"Spice Cabinet\");"
end

it "sends the cmd to add an ingredient" do
  out = trainer_cook.new_stock("Thyme","Herb","1")
    expect(out).to eq "INSERT INTO ingredients (name, age, perch_pref, cuddly) VALUES (\"Thyme\",\"Herb\",1);"
end

it "sends the cmd to add a cuisine" do
  out = trainer_cook.new_cuisine("Greek","lemon","olive oil","oregano")
  expect(out).to eq "INSERT INTO cuisines (name, father, son, holy_ghost) VALUES (\"Greek\",\"lemon\",\"olive oil\",\"oregano\");"
end
  
end