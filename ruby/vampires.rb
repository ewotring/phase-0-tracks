puts "What is your name?"
new_name=gets.chomp
puts "How old are you?"
age=gets.chomp.to_i
puts "What year were your born?"
year=gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
bread=gets.chomp
puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance=gets.chomp

result="Results inconclusive."

if 2017-year==age && (bread=="y" || insurance=="y")
    result="Probably not a vampire."
end

if 2017-year!=age && (bread=="n" || insurance=="n")
    result="Probably a vampire."
end

if 2017-year!=age && bread=="n" && insurance=="n"
    result="Probably a vampire."
end

if 2017-year!=age && bread=="n" && insurance=="n"
    result="Almost certainly a vampire."
end

if new_name=="Drake Cula" || new_name=="Tu Fang"
    result="Definitely a vampire."
end

puts "#{result}"