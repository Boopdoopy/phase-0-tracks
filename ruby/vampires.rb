#Asks employee for name, occupation, age, year of birth, garlic bread order, interested in health insurance

class employee
  def initialize (nme, job, age, year, garlic, health_insur)
    @ee_nme = nme
    @ee_job = job
    @ee_age = age
    @ee_year = year
    @ee_garlic = garlic
    @ee_health_insur = health_insur
  end
end

def survey
  puts "Welcome new employee! \n We have a quick survey for you to fill out \n (it's mandatory)"

  puts "" 
  nme = gets.chomp
  puts ""
  job = gets.chomp
  puts ""
  age = gets.chomp
  puts ""
  age = age.to_i
  puts ""
  year = gets.chomp
  year = year.to_i
  puts ""
  garlic = gets.chomp
  garlic.downcase
  puts ""
  health_insur = gets.chomp
  health_insur.downcase
  return nme, job, age, year, garlic, health_insur
end