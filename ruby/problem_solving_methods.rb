#arr = [46, 2, 98, 6]
#puts "provide a number"
#num_search=gets.to_i
#
#def search_array (x, num_search)
#        x.each_with_index do |elements, index|
#            if elements==num_search
#                return index
#            elsif index==x.length-1
#                return "nil"
#            else
#                next
#            end
#        end
#end
#
#puts search_array(arr, num_search)

puts "length of sequence"
sequence=gets.to_i
#Build an array element by element.
#Each element is the sum of the prior two elements.

arr1=[0,1]
i=2
while i<sequence
    arr1[i]=arr1[i-2]+arr1[i-1]
    i+=1
end

puts arr1

if arr1[99]==218922995834555169026
    puts "it matches!"
end