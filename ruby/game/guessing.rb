class Guessing
  attr_reader :game, :remaining_guess, :is_over
  
  def initialize(word)
    @is_over = false
    @previous = Array.new
    @remaining_guess = word.length
    @remaining_guess /= 3
    @remaining_guess += 1
    @game = Hash.new
    fudge_factor = 0
    word.each_char do |char|
      if @game.has_key?(char)
        key_fudge = "#{char}#{fudge_factor}"
        fudge_factor +=1
        @game.store(key_fudge,"_")
      else
        @game.store(char,"_")
      end
    end
  end

  def reveal
    status = " "
    @game.each do |hidden, visible|
      status << visible
      status << " "
    end
    status << "\nNumber of guesses remaining = #{@remaining_guess}\n"

  end

#thought: have try take a boolean, while false the game continues
  def try(letter)
      if letter.length != 1
        @is_over = false

      elsif @game.has_key?(letter)
        @game.each do |hidden,visible|
          if hidden.include?(letter)
            @game[hidden] = letter
          end
        end
        @game
      elsif @previous.include?(letter)
        @is_over = false
      else
        @remaining_guess -= 1
        @previous << letter
      end 
  end

  def result
    if !@game.has_value?("_")
      @is_over = true
    elsif @remaining_guess == 0
      @is_over = nil
    else
      @is_over = false
    end
  end
end

#Driver code///////////////////////

hangman = Guessing.new("lightning")

while hangman.is_over == false
  print hangman.reveal
  puts "guess a letter"
  letter = gets.chomp
  hangman.try(letter)
  game_msg = hangman.result
    case game_msg
      when true
        puts "Congrats!"
      when nil
        puts "You suck!"
      else
        puts "The game continues!"
      end
end
