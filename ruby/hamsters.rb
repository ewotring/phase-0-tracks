puts "What is the hamster's name?"
name = gets.chomp
puts "How chatty is the hamster, on a scale from 1 to 10?"
volume = gets.chomp.to_i
puts "What color is the hamster's fur?"
color = gets.chomp
puts "Is this hamster a good candidate for adoption?"
candidate = gets.chomp
puts "What is the estimated age of the hamster?"
age = gets.chomp
if age == ""
    age = nil
end

puts "The hamster's name is #{name}"
puts "The hamster's volume is #{volume}"
puts "The hamster's fur color is #{color}"
puts "The hamster's candidacy is #{candidate}"
if age==nil
    puts "The hamster's age is not known."
else 
    puts "The hamster's age is #{age}"
end