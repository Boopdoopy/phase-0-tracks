require "./Guessing"
describe Guessing do 
  let(:'hangman'){Guessing.new("cat")}

  it "Takes a word and stores 1/3 + 1 its length" do
    # hangman = Guessing.new("cat")
    expect(hangman.remaining_guess).to eq 2
  end

  it "Takes a word and stores in hash each character as key with value _" do
    # hangman = Guessing.new("cat")
    expect(hangman.game).to eq("c"=>"_","a"=>"_","t"=>"_")
  end

  it "Prints the status of the game" do
    # hangman = Guessing.new("cat")
    expect(hangman.reveal).to eq(" _ _ _ \nNumber of guesses remaining = 2\n")
  end

  it "Takes a letter and checks if it's one character" do
     # hangman = Guessing.new("cat")
     expect(hangman.try("ca")).to eq false
  end

  it "Stores a match with the same key" do
  # hangman = Guessing.new("cat")
  expect(hangman.try("c")).to eq("c"=>"c","a"=>"_","t"=>"_")
  end

  it "Stores a duplicate match with all keys" do
    game_on = Guessing.new("moon")
    expect(game_on.try("o")).to eq("m"=>"_", "o"=>"o", "o0"=>"o", "n"=>"_")
  end
  
  it "Stores a non-match in previous guesses" do
  # hangman = Guessing.new("cat")
  expect(hangman.try("z")).to eq(["z"])
  end


  it "Checks a guess against previous guesses" do
    hangman.try("z")
    expect(hangman.try("z")).to eq false
  end

  it "Subtracts a wrong guess from maximum guesses" do
    hangman.try("z")
    expect(hangman.remaining_guess).to eq 1
  end

  it "Checks for blanks in hash" do
    expect(hangman.result).to eq false
  end

  it "Returns true if hash has no blanks" do
    hangman.try("c")
    hangman.try("a")
    hangman.try("t")
    expect(hangman.result).to eq true
  end

  it "Compares previous guess number to remaining" do
    hangman.try("c")
    hangman.try("c")
    hangman.try("z")
    hangman.try("x")
    hangman.try("a")
    hangman.try("x")
    expect(hangman.result).to eq nil
  end

end