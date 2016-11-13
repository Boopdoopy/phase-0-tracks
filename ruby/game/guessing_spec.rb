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
  # let(:hangman) {Guessing.new("lighting")}

  # it "takes in a string,stores max guesses, stores each character in a hash as keys with value _ " do
  #   # expect(hangman.game).to equal 
  #   #   {:l=>"_ ", :i=>"_ ",
  #   #   :g=>"_ ", :h=>"_ ", 
  #   #   :t=>"_ ", :i=>"_ ", 
  #   #   :n=>"_ ", :g=>"_ "} 
  #    expect(hangman.remaining_guess).to eql 3
  #    expect(hangman.prev_guess).to equal []
  #   end

  # it "Returns the values from the hidden word and remaining guesses as string while false, and print result when true" do
  #   expect(hangman.reveal.to eq "_ _ _ _ _ _ _ _ \n3 guesses left"
  #   end

  # it "determines whether the game is over and the result" do
  #   expect(hangman.result).to eq false
  #   end
  # it "takes in a single character checks it against guesses, hidden word, and updates as needed" do
  #   hangman.guess("l")
  #   expect(hangman.prev_guess).to eq ["l"]
  #   expect(hangman.remaining_guess).to eq 3
  #   # expect(hangman.game).to eq {
  #   #   :l=>"l ", :i=>"_ ",
  #   #   :g=>"_ ", :h=>"_ ", 
  #   #   :t=>"_ ", :i=>"_ ", 
  #   #   :n=>"_ ", :g=>"_ "
  #   #  } 
  #   end
