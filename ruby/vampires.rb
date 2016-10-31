#Asks employee for name, occupation, age, year of birth, garlic bread order, interested in health insurance

#original initialize parameters switching to an array
#nme, job, age, year, garlic, health_insur
class Employee
  def initialize (*a)
    i = 0
#Chose count over the myriad of other options because I read ahead in the 
#release a little. And it seemed from research to be useful. We'll find out! :)
    surv_lengt = a.count{}
    while surv_lengt
    @ee_nme = nme
    @ee_job = job
    @ee_age = age
    @ee_year = year
    @ee_garlic = garlic
    @ee_health_insur = health_insur
  end
end

def survey
  result = Array.new(6)
  puts "Welcome new employee! \n We have a quick survey for you to fill out \n (It's mandatory)"

  puts "What is your name?" 
  nme = gets.chomp
  result[0] = nme
  #return nme
  puts "That's a nice name"

  
  puts "What is your new position here?"
  job = gets.chomp
  result[1] = job
  #return job
  puts "We need more of those around here!" 
  
  puts "How old are you?"
  age = gets.chomp
  result[2] = age.to_i
  #return age
  puts "Age is just a number!"
  
  puts "What year were you born?"
  year = gets.chomp
  result[3] = year.to_i

  #return year
  puts "Best time to be alive"
  
  puts "Our company cafeteria serves garlic bread. \nShould we order some for you? (y/n)"
  garlic = gets.chomp
  garlic = garlic.downcase
    if garlic == "y"
        result[4] = true
        #return garlic
        "I know, right?"

  elsif health_insur == "n"
        result[4] = false
        #return garlic
        "I know, right?"
  else
        result[4] = nil
        #return garlic
        puts "Error. Please speak to your survey technician"

  end
  
  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  health_insur = gets.chomp
  health_insur = health_insur.downcase
  if health_insur == "y"
    result[5] = true
  elsif health_insur == "n"
    result[5] = false
  else
    result[5] = nil
    puts "Error. Please speak to your survey technician"
  end
  return result
end




employee1 = Employee.new (survey)

puts employee1






