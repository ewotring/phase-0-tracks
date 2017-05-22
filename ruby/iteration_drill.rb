# Array Drills



zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
zombie_apocalypse_supplies.each{|x| print x, "*"}
# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]


n=8
loop do
    switch=0
    i=0
    until i==7
        if zombie_apocalypse_supplies[i+1]<zombie_apocalypse_supplies[i]
            zombie_apocalypse_supplies[i+1], zombie_apocalypse_supplies[i]=zombie_apocalypse_supplies[i], zombie_apocalypse_supplies[i+1]
            switch=1
        end
        i+=1
    end
    break if switch==0
end

puts zombie_apocalypse_supplies
# Didn't quite get the edge case of the capital letters in CB radio, but the bubble sort mostly worked. The capital letters must evaluate to a smaller value than the lower case letters

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

puts "what item do you want to seek?"
item=gets.chomp
zombie_apocalypse_supplies.each{|x| if x==item then print x end}
# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

zombie_apocalypse_supplies.each{|x| 
    zombie2=[]
    case x
        when "hatchet" 
            zombie2<<"hatchet"
        when "rations"
            zombie2<<"rations"
        when "water jug"
            zombie2<<"water jug"
        when "binoculars"
            zombie2<<"binoculars"
        when "shotgun"
            zombie2<<"shotgun"
        else
            
        end
        print zombie2}

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
combined_gear=zombie_apocalypse_supplies+other_survivor_supplies
unique_combined_gear=combined_gear.uniq
p unique_combined_gear

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each{|key, value| print " #{key} - #{value} *"}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}
extinct_before_2000=Hash.new
extinct_animals.each do |key, value|
    if value<2000
        extinct_before_2000[key] = value
    end
end
puts extinct_before_2000
# I was unable to figure out how to keep the same hash, so I had to make a new hash.

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

extinct_animals.each{|key, value| extinct_animals[key]=value+=3}

print extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

extinct_animals.each{|key, value| 
    case key
        when "Andean Cat" 
            puts "Andean Cat is extinct"
        when "Dodo"
            puts "Dodo is extinct"
        when "Saiga Antelope"
            puts "Saiga Antelope is extinct"
        else
            puts "The animal is not extinct"
        end}

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

print extinct_animals.assoc("Passenger Pigeon")