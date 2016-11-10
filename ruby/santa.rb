#Santa class
#----------
#METHODS
# => speak
# => eat_milk_and_cookies
# => initialize
#ATTRIBUTES




class Santa
  attr_reader :age, :ethnicity, :reindeer_ranking
  attr_accessor :gender


  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie = "chocolate-chip cookie")
    count = 0
      while count != 3
        print "nom..."
        sleep(0.5)
        count += 1
      end
    puts "That was a good #{cookie}!"
  end

  def initialize(
    gender, 
    ethnicity, 
    age = 0,
    reindeer_ranking = [
      "Rudolph", "Dasher", 
      "Dancer", "Prancer", 
      "Vixen", "Comet", 
      "Cupid", "Donner", 
      "Blitzen"
      ]
    )


    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = reindeer_ranking
    @age = age

    print "Initializing Santa instance"
    count = 0
      while count != 2
        print "."
        sleep(0.15)
        count += 1
      end
      print "\n"
  end

        
#celebrate_bday
  def celebrate_bday
    @age += 1
    puts "  * HAPPY\n / \\BIRTHDAY\n(ﾉᵔヮᵔ)ﾉ*:・ﾟ・ﾟ✧ ✧"
  end

#get mad at reindeer
  def get_mad_at_reindeer(ragedeer)
    puts "I've had enough of you #{ragedeer}!!!!!"
    i = @reindeer_ranking.index(ragedeer)
    sleeping_on_couch  = @reindeer_ranking.slice!(i)
    @reindeer_ranking << sleeping_on_couch
  end
end



#-----------Methods
def santa_factory(shipment)
  #--------Reference local arrays
    gender_list = [
      "Male ","Female ","Gender queer ",
      "Non-binary ","Gender fluid ", "Kathoey ",
      "Hijras ","Khanith ","Leather daddy ",
      "Agender ","Butch ","Androgyne ",
      "Undisclosed "
    ]
    ethnicity_list = [
      "Native American ","Caucasian ",
      "African American ","West African ",
      "East African ","Arab ","Persian ",
      "Indian ","Chinese ","Vietnamese ",
      "Pacific Islander ","Mestizo ",
      "Hispanic "
    ]
    subculture_list = [
      "punkrocker","unicorn","pirate",
      "ninja","cowboy","samurai",
      "space alien","robot","cyborg",
      "hawkperson","giant banana",
      "secret lizard person","wizard"
    ]
    rng_age = (0..140).to_a
    santas = []
  i = 0
    while i < shipment do
      ethnicity_complex = [
        ethnicity_list.shuffle.pop, 
        subculture_list.shuffle.pop
      ]
      ethn_complex = ethnicity_complex.join("")
      santas << Santa.new(gender_list.shuffle.pop, ethn_complex, rng_age.shuffle.pop)
      i += 1
    end
  santas
end



def santa_con(santas)
santas.each do |i|
  if santas.index(i) < 1
    puts "    --------🎄--------    \n Calling Santa-con role call!\n    -----------------    "
  elsif santas.index(i) == (santas.length - 1)
    puts "Love to see such a diverse group of Santas!"
  else
   print "#{i.age} year old, #{i.gender}#{i.ethnicity}-santa reporting in!\n"
 end

 end
end


santa_con(santa_factory(10))











# the_OG = Santa.new("Male","Rosy northern whitebeard")

# # p the_OG.age

# # the_OG.celebrate_bday

# # p the_OG.age

# # p the_OG.ethnicity

# p the_OG.gender

# the_OG.gender = gender_list[8]

# p the_OG.gender

# p the_OG.reindeer_ranking

# the_OG.get_mad_at_reindeer("Rudolph")

# p the_OG.reindeer_ranking





# gender_list.length.times do |i|
#   santas << Santa.new(gender_list[i], ethnicity_list[i])
# end

# gender_list.length.times do |i|
#     ethnicity_complex = ethnicity_list.shuffle![i]
#     # p ethnicity_complex
#     ethnicity_complex << " "
#     # p ethnicity_complex
#     ethnicity_complex << subculture_list[i]
#     # p ethnicity_complex
#     santas << Santa.new(gender_list[i], ethnicity_complex)
# end





