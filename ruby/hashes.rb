#initialize hash
client_details = {name:"name", age: 50, number_children: 2, decor_theme: "decor theme", works_at_home: true}
#prompt user for values in hash
puts "Enter client name"
client_details[:name]=gets.chomp
puts "Enter client age"
client_details[:age]=gets.chomp.to_i
puts "Enter number of children"
client_details[:number_children]=gets.chomp.to_i
puts "Enter decor theme"
client_details[:decor_theme]=gets.chomp
puts "Does client work at home? (true or false)"
client_details[:works_at_home]=gets.chomp

#print hash
p client_details

#Ask if user wants to update a key.
puts "Enter a key if you want to update it. (enter 'none' if no preference)"
update=gets.chomp
#Skip if user enters "none" (include prompt)
if update=="none"
    p client_details
else
#Ask for key and convert string to symbol
#if key is number_children or age, then change to integer
    change=update.to_sym
    puts "Enter the new value for this key."
    if update=="age"
        client_details[change]=gets.chomp.to_i
    elsif update=="number_children"
        client_details[change]=gets.chomp.to_i
    else
        client_details[change]=gets.chomp
    end
    p client_details
end