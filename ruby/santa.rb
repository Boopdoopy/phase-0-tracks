#Santa class
#----------
#METHODS
# => speak
# => eat_milk_and_cookies
# => initialize
#ATTRIBUTES
#



class Santa

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
    reindeer_ranking = [
      "Rudolph", "Dasher", 
      "Dancer", "Prancer", 
      "Vixen", "Comet", 
      "Cupid", "Donner", 
      "Blitzen"
      ],
    age = 0
    )
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = reindeer_ranking
    @age = age
    print "Initializing Santa instance"
    count = 0
      while count != 2
        print "."
        sleep(0.25)
        count += 1
      end
      print "\n"
  end

        #3 setter methods
        #celebrate_bday agin
  def celebrate_bday
    @age += 1
    puts "  * HAPPY\n / \\BIRTHDAY\n(ﾉᵔヮᵔ)ﾉ*:・ﾟ・ﾟ✧ ✧"
  end

        #get mad at reindeer
  def get_mad_at_reindeer(ragedeer)
    i = @reindeer_ranking.index(ragedeer)
    sleeping_on_couch  = @reindeer_ranking.slice!(i)
    @reindeer_ranking << sleeping_on_couch

    # p on_timeout
    # @reindeer_ranking.rotate!(on_timeout)
    # p @reindeer_ranking
  end
        #gender fluidity method
  def gender_fluidity(gender)
    @gender = gender
  end
        #2 getter methods
        #age returns @age
  def age
    @age
  end
        #ethnicity returns @ethnicity
  def ethnicity
    @ethnicity
  end

  def gender
    @gender
  end

  def top_deer
    @reindeer_ranking[0]
  end
end

santas = []

gender_list = [
  "male",
  "female",
  "gender queer",
  "non-binary",
  "gender fluid",
  "kathoey",
  "Hijras",
  "Khanith",
  "Leather daddy",
  "agender",
  "Butch",
  "androgyne",
  "undisclosed"
]

ethnicity_list = [
  "Native American",
  "Caucasian",
  "African American",
  "West African",
  "East African",
  "Arab",
  "Persian",
  "Indian",
  "Chinese",
  "Vietnamese",
  "Pacific Islander",
  "Mestizo",
  "Hispanic"
]

subculture_list = [
  "punkrocker",
  "unicorn",
  "pirate",
  "ninja",
  "cowboy",
  "samurai",
  "space alien",
  "robot",
  "cyborg",
  "hawkperson",
  "banana themed",
  "secret lizard person",
  "wizard"
]


the_OG = Santa.new("Male","Rosy northern whitebeard")

# p the_OG.age

# the_OG.celebrate_bday

# p the_OG.age

# p the_OG.ethnicity

p the_OG.gender

the_OG.gender_fluidity(gender_list[8])

p the_OG.gender

p the_OG.top_deer

the_OG.get_mad_at_reindeer("Rudolph")

p the_OG.top_deer





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


# santas.each do |i|
#   puts "#{i}"
# end




