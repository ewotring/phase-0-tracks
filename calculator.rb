def calculate (int1, opstring, int2)

    if opstring=="+"
        int1 + int2
    elsif opstring=="-"
        int1 - int2
    elsif opstring=="*"
        int1 * int2
    elsif opstring=="/"
        int1 / int2
    else
        puts "Please use correct input of an integer, an operator (+, -, *, or /), and an integer, without spaces."
    end
end

#calculate(4, "+", 2)
#calculate(4, "-", 2)
#calculate(4, "*", 2)
#calculate(4, "/", 2)

puts "What operation would you like to perform?"
operation_input=gets.chomp
calc_num=0
record=Hash.new
until operation_input=="done"
    operation=operation_input.chars
    operation[0]=operation[0].to_i
    operation[2]=operation[2].to_i
    output=calculate(operation[0], operation[1], operation[2])
    p output
    record[operation_input] = output
    puts "What operation would you like to perform?"
    operation_input=gets.chomp
    calc_num+=1
    
end
puts "#{calc_num} calculations were performed:"
p record.each{|key, value| puts "#{key} = #{value}"}
