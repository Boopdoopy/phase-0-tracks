#Asks employee for name, occupation, age, year of birth, garlic bread order, interested in health insurance

#original initialize parameters switching to an array
#nme, job, age, year, garlic, health_insur
#mkay, need to understand splat operator better
class Employee
  def initialize (*a)
    #i = 0
#Chose count over the myriad of other options because I read ahead in the 
#release a little. And it seemed from research to be useful. We'll find out! :)
    #whoop not necessary.... actually ee_nme is holding all values lol
    #shift might be what I'm looking for

    @ee_nme = a.shift
    @ee_job = a.shift
    @ee_age = a.shift
    @ee_year = a.shift
    @ee_garlic = a.shift
    @ee_health_insur = a.shift
  end

#ran into a bit of an issue with returning the values. 
#Another class function should help with that ~or~ end up 
#teaching me how to build a better mousetrap lol
   def details()
    puts "Name:  #@ee_nme"
    puts "Position: #@ee_job"
    puts "Age: #@ee_age"
    puts "Year of birth: #@ee_year"
    puts "Garlic bread lover: #@ee_garlic"
    puts "Health insurance interest: #@ee_health_insur"
  end
end

def survey
  result = Array.new(6)
  puts "Welcome new employee! \n We have a quick survey for you to fill out \n (It's mandatory)"

  puts "What is your name?" 
  nme = gets.chomp
  result.push(nme) 
  #return nme
  puts "That's a nice name"

  
  puts "What is your new position here?"
  job = gets.chomp
  result.push(job)
  #return job
  puts "We need more of those around here!" 
  
  puts "How old are you?"
  age = gets.chomp
  result.push(age.to_i)
  #return age
  puts "Age is just a number!"
  
  puts "What year were you born?"
  year = gets.chomp
  result.push(year.to_i)

  #return year
  puts "Best time to be alive"
  
  puts "Our company cafeteria serves garlic bread. \nShould we order some for you? (y/n)"
  garlic = gets.chomp
  garlic = garlic.downcase
    if garlic == "y"
        result.push(true)
        #return garlic
        "I know, right?"

  elsif garlic == "n"
        result.push(false)
        #return garlic
        "I know, right?"
  else
        result.push(nil)
        #return garlic
        puts "Error. Please speak to your survey technician"

  end
  
  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  health_insur = gets.chomp
  health_insur = health_insur.downcase
  if health_insur == "y"
    result.push(true)
  elsif health_insur == "n"
    result.push(false)
  else
    result.push(nil)
    puts "Error. Please speak to your survey technician"
  end
  return result.slice(0..5)
end




employee1 = Employee.new (survey)

employee1.details









