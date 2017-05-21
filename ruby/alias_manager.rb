# take the name as a string
# split the name into an array of two words
# reverse the two elements of the array
# split each word into letters
# loop through the elements
    # advance each vowel to the next vowel
        # I can use a case statement for vowel detection
    # advance each consonant to the next consonant
        # I can use a case statement for consonant detection
    # edge cases can be manually managed. For example, z changes to b and u changes to a

def vowel (name)
    split_name=name.split(' ')
    reverse_name=split_name.reverse
    new_name=reverse_name.join(" ")
    array=[]
    i=0
    name_array=new_name.chars
    while i<name_array.length
        vowels=["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
        consonants="BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz".chars
        case name_array[i]
# Upper case vowel edge case
        when "U"
            name_array[i]="A"
            array<<name_array[i]
# Lower case vowel edge case
        when "u"
            name_array[i]="a"
            array<<name_array[i]
# Upper case consonant edge case
        when "Z"
            name_array[i]="B"
            array<<name_array[i]
# Lower case consonant edge case
        when "z"
            name_array[i]="b"
            array<<name_array[i]
# Special case to handle space        
        when " "
            array<<name_array[i]
# The case for vowels. Note that the edge cases are omitted.        
        when "A", "E", "I", "O", "a", "e", "i", "o"
            vowel_for_index=name_array[i]
            v_index=vowels.index(vowel_for_index)
            new_i=v_index+1
            new_vowel=vowels[new_i]
            array<<new_vowel
# This covers the remainder, which are the upper case and lower case consonants.        
        else
            consonant_for_index=name_array[i]
            c_index=consonants.index(consonant_for_index)
            new_i=c_index+1
            new_consonant=consonants[new_i]
            array<<new_consonant
        end
        i+=1
    end
    p array.join
end

puts "What is the agent name?"
full_name=gets.chomp
    
until full_name=="quit"
    puts vowel (full_name)
    puts "What is the agent name? (Type 'quit' to exit.)"
    full_name=gets.chomp
end