class Guessing
  attr_reader :game, :remaining_guess
  
  def initialize(word)
    @previous = Array.new
    @remaining_guess = word.length
    @remaining_guess /= 3
    @remaining_guess += 1
    @game = Hash.new
    word.each_char do |char|
      @game.store(char,"_")
    end

  def reveal
    status = " "
    @game.each do |hidden, visible|
      status << visible
      status << " "
    end
    status << "\nNumber of guesses remaining = #{@remaining_guess}"

  end

#thought: have try take a boolean, while false the game continues
  def try(letter)
    if letter.length != 1
      false
    elsif @game.has_key?(letter)
      @game[letter] = letter
      @game
    elsif @previous.include?(letter)
      false
    else
      @previous << letter
    end
  end
  def result
    @game.has_value?("_")
  end

  end
  #   length = word.length
  #   length /= 3 
  #   length += 1
  #   @remaining_guess = length
  #   @game = Hash.new
  #   @prev_guess = Array.new
    
  #   char_array = word.split('')
  #     char_array.each do |char|
  #       @game << {char, "_ "}
  #     end
  #   end

  # end
end