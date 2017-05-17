arr = [46, 2, 98, 6]
puts "provide a number"
num_search=gets.to_i

def search_array (x, num_search)
        x.each_with_index do |elements, index|
            if elements==num_search
                return index
            elsif index==x.length-1
                return "nil"
            else
                next
            end
        end
end

puts search_array(arr, num_search)