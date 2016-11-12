require "./guessing"
describe Guessing_game do 
  let(:hangman) {Guessing_game.new("lighting")}

  it "takes in a string,calculates 1/3 + 1 of the length of the word,
      stores the result in max guesses,splits the string given into single characters, 
      stores each character in a hash as keys with value _ "
    do
    expect(hangman.game).to eq {
      "l"=>"_ ", "i"=>"_ ",
      "g"=>"_ ", "h"=>"_ ", 
      "t"=>"_ ", "i"=>"_ ", 
      "n"=>"_ ", "g"=>"_ " 
     } 
     expect(hangman.remaining_guess).to eq 3
     expect(hangman.prev_guess).to eq []
    end

  it "Returns the values from the hidden word and remaining guesses
      as string while false, and print result when true"
       
    do
    expect(hangman.reveal.to eq "_ _ _ _ _ _ _ _ \n3 guesses left"
    end

  it "determines whether the game is over and the result"
    do
    expect(hangman.result).to eq false
    end
  it "takes in a single character checks it against
      guesses, hidden word, and updates as needed"
    do
    hangman.guess("l")
    expect(hangman.prev_guess).to eq ["l"]
    expect(hangman.remaining_guess).to eq 3
    expect(hangman.game).to eq {
      "l"=>"l ", "i"=>"_ ",
      "g"=>"_ ", "h"=>"_ ", 
      "t"=>"_ ", "i"=>"_ ", 
      "n"=>"_ ", "g"=>"_ " 
     } 
    end
end