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
    i = 0
      while i != 3
        print "nom..."
        sleep(0.5)
        i += 1
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
    i = 0
      while i != 2
        print "."
        sleep(0.25)
        i += 1
      end
      print "\n"
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

gender_list.length.times do |i|
  santas << Santa.new(gender_list[i], ethnicity_list[i])
end

santas.each do |i|
  

