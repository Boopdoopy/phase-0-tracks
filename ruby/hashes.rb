
#Psuedocode ( for scratch work comments see bottom)

# Initialize a hash
# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine).
# If the designer says "none", skip it. 
#the designer enters "decor_theme" (ex) ask for a new value and update the :decor_theme key. 
#(Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
#You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.



#iterate through hash prompting with key and getsing that value
  #pref and ombre need seperate cases
#convert user input to appropriate data type
#fill in that value
#print the hash
#ask user if they want to add a key (y/n)
#if y create new key (turn into symbol) and prompt for value
#print the hash



#Global variables and methods
$int_designer = {
  :'Name' => " ",
  :'Address' => " ",
  :'Email' => " ",
  :'Phone number' => " ",
  :'Favorite shade of blue' => " ",
  :'Wallpaper preference' => " ",
  :'Opinion of Ombre' => " ",
}

$key_response = ""

$wallpaper_array = []

  def results()
  puts  "<~-~-~-~-~-~-~-Results-~-~-~-~-~-~-~>"
  $int_designer.each {|key,value| puts "---- #{key} ----\n #{value}\n"}
  puts  "====================================="
  end


#Driver code
$int_designer.each do |key,value|
      case key

        when :'Wallpaper preference'
          puts "What is your #{key}?\n(A)Paisley?\n(B)Chevrons?\n(C)Photorealistic woodsy scenes (with or without squirrels)?\n(D)Abstract woodsy scenes (no squirrels)?"
          puts "Submit all that apply in order [Example:ACD]"
        when :'Opinion of Ombre'
          puts "What is your #{key}?"
          puts "(1)Is it Fierce?\n(2)So last season?\n(3)Practically medieval in its appalling irrelevance?\n"
        else
          puts "What is your #{key}?"
      end
      response = gets.chomp
    $int_designer.store( key, response)
    puts "<~-~-~-~-~-~-~-~-~-~-~-~-~-~-~>"
  end

  $int_designer.each do |key,value|
    if key == :'Phone number'
      #may have to add a way to only keep string numbers and discard ./-() etc
      @value = value.to_i
      $int_designer[key] = @value

    elsif key == :'Opinion of Ombre'
      case value
        when "1"
          $int_designer[key] = "Fierce!"
        when "2"
          $int_designer[key] = "so last season"
        when "3"
          $int_designer[key] = "practically medieval in its appalling irrelevance"        
      end
    end
  end

  $wallpaper_array = $int_designer[:'Wallpaper preference'].split(//)
  $wallpaper_array.map! do |pref|
        case pref
          when "A"
            pref = "Paisley"
          when "B"
            pref = "Chevrons"
          when "C"
            pref = "Photorealistic woodsy scenes (w\/ or w\/o squirrels)"
          when "D"
            pref = "Abstract woodsy scenes (no squirrels)"
        end
      end
  $int_designer[:'Wallpaper preference'] = $wallpaper_array.join(", ")

  results()
  
  puts "New category to add?? Write the name here!"
  $key_response = gets.chomp
  $key_response = $key_response.downcase

  unless $key_response == "none"
    @key = $key_response.to_sym
    puts "and how do you feel about #{$key_response}?"
    @value = gets.chomp
    $int_designer[@key] = @value
  end

  results()
      
# def results
  # puts  "<~-~-~-~-~-~-~-Results-~-~-~-~-~-~-~>"
  # int_designer.each {|key,value| puts "---- #{key} ----\n #{value}\n"}
  # puts  "====================================="
  # end

      # case key
      #   when :phone_number
      #     int_designer.store (key, value.to_i)
      #   when :wallpaper_preference
      #     @new_value = ""
      #     #aight so we have 1, 12, 13, 14, 123, 124, 134, 1234
      #       if value.count("1") > 0
      #         @new_value += "Paisley, "
      #       end
      #       if value.count("2") > 0
      #         @new_value += "Chevrons, "
      #       end
      #       if value.count("3") > 0
      #         @new_value += "Photorealistic woodsy scenes (with or without squirrels), "
      #       end
      #       if value.count("4") > 0
      #         @new_value += "Abstract woodsy scenes (no squirrels), "
      #       end
      #     int_designer.store (key, @new_value)
      #     #Currently worried about case jumping
      #   when :opinion_of_ombre
      #     case value
      #       when "1"
      #         int_designer.store (key, "Fierce")
      #       when "2"

      #     end

      #   end

      # end

# INTERIOR DESIGNER JOB APPLICATION

# Name: __________________________________________
# Address: _______________________________________
# Email: _________________________________________
# Phone: _________________________________________

# Fave shade of blue: ____________________________

# Wallpaper preferences (check any that apply):
# ▢ Paisley
# ▢ Chevrons
# ▢ Photorealistic woodsy scenes (with or without squirrels)
# ▢ Abstract woodsy scenes (no squirrels)

# Ombre is:
# ◯ Fierce
# ◯ So last season
# ◯ Practically medieval in its appalling irrelevance


  







