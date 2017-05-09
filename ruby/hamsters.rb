puts "What is the hamster's name?"
name = gets.chomp
#puts "The hamster's name is #{name}"
puts "How chatty is the hamster, on a scale from 1 to 10?"
volume = gets.chomp
puts "What color is the hamster's fur?"
color = gets.chomp
puts "Is this hamster a good candidate for adoption?"
candidate = gets.chomp
puts "What is the estimated age of the hamster?"
age = gets.chomp
if age == ""
    age = nil
end

if age == ""
    puts "nil"
else 
    puts "#{age}"