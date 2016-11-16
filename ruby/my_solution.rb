# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
#require_relative vs require
#require will just look in the load path. A global variable that ruby has access to.
#require_relative will be searched in the current folder that you call out. more predictable.
require_relative 'state_data'
class VirusPredictor
 #initialize instance variables, only list out parameters in initialize.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
 
 # run speed_of_spread and predicted_deaths
  def virus_effects
    predicted_deaths
    # (@population_density, @population, @state)
    speed_of_spread
    # (@population_density, @state)
  end
  private #private is protected, and you can't use it outside of the class
 
  #the method is returning the number of deaths in each state.
  def predicted_deaths
    # (population_density, population, state)
    # predicted deaths is solely based on population density
    multiplier = 0.0
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier =  0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    number_of_deaths = (@population_density * multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  #get the speed of the spread, based on the population density
  def speed_of_spread(speed = 0.0)
    #   (population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    #change it to p if want to see something returned.
    print " and will spread across the state in #{speed} months.\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
print "============================<CDC REPORT>===========================\n"
STATE_DATA.each do |state,pop_info|
  state_instance = VirusPredictor.new(state, pop_info[:population_density],pop_info[:population])
  print "___________________________________________________________________\n"
  state_instance.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
#=======================================================================
# Reflection Section
#What kind of variable is STATE_DATA: global variable, and what's its scope?