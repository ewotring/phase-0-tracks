#This is for Release 0
arr = [46, 2, 98, 6]
puts "provide a number"
num_search=gets.to_i

def search_arr(arr, num)
  arr.each_index do |idx|
    if arr[idx] == num
      return idx
    end
  end
  return "nil"
end
puts search_arr(arr, num_search)

#This is for Release 1
puts "length of sequence"
sequence=gets.to_i
Build an array element by element.
Each element is the sum of the prior two elements.
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

#This is for Release 2
#pseudocode for bubble sort
#If one element is larger than the next, then the two elements are switched.
# However, the algorithm must iterate through the array until no more switches can be made.
# This can be affected by running through the array depending on the length of the array.


arr2=[5, 4, 3, 2, 1]
i=0

n=arr2.length
loop do
    switch=0
    (n-1).times do |i|
        if arr2[i+1]<arr2[i]
            arr2[i+1], arr2[i]=arr2[i], arr2[i+1]
            switch=1
        end
    end
    break if switch==0
end

puts arr2