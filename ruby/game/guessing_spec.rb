require "./Guessing"
describe Guessing do 
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
end