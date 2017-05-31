# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#This connects to the data file.
#This statement essentially copies the data from the file into this location of the program.
#Difference is that require requires the entire directory path for the file.

#STATE_DATA is a constant, because it is initialized with capital letters.
#This is meant not to be changed while running the program; doing so will cause a warning.
#This is in the global name space



class VirusPredictor
attr_reader :virus_effects
  #Initializes a new instance of a class.
  #This is where we initialize our instance variables and state attributes.
  #Takes three parameters as arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # The virus_effects method looks like a getter for predicted_deaths and speed_of_spread.

  #private

  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  # the private method appears to make the following methods only available within the class.
  # When I moved private above virus_effects, I got an error saying that a private method was called.
  # Such a method could be used when a given set of methods would only be wanted to be used within the class.
  private

  # This depends on the population density, establishing a positive correlation between population density and the number of deaths.
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Again establishes a correlation between population density and the time it will take for the disease to spread across the state.
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

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

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

#STATE_DATA.each {|state, data| puts "#{state}, #{STATE_DATA[state][:population_density]}, #{STATE_DATA[state][:population]}"}
STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects
end
#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
 
# The keys are different. The keys for the outer hash are strings. The keys for the nested hash are symbols.
 
# What does require_relative do? How is it different from require?
 
# This connects to the data file.
# This statement essentially copies the data from the file into this location of the program.
# Difference is that require requires the entire directory path for the file.
 
# What are some ways to iterate through a hash?
 
# The each method works. As well, the each_value passes the value for each key as a parameter. 
# You could use the key method to make an array of the keys, then iterate through the array, passing the key to another method as an argument.
 
# When refactoring virus_effects, what stood out to you about the variables, if anything?
 
# The fact that the variables are all instance variables, and that they are called directly in each of the methods called by virus_effects, interested me because the variables were totally redundant in virus_effects. Then, the arguments for the called methods can be commented out.
 
# What concept did you most solidify in this challenge?

# I think I most benefitted by looking more carefully at the variables passed as parameters in virus_effect. Nonetheless, I also learned while making the report for all 50 states in a DRY way.