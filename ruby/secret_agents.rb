=begin
Encrypt:
- Wait until some letters is typing in.
 - will need to find the letter and repeat this process
  - if the letter is "z", we want to reassign the variable to be "a"
  - else if the letter is empty, we want to resassign the variable to be empty
  - else other letters we will set each letter that will find that move forward one step.
- after all the letters moving forward, it will stop and return the output of the moving forward letters.

Decrypt:
- Wait until some letters is typing in.
 - will need to find the letter and repeat this process
  - if the letter is "z", we want to reassign the variable to be "a"
  - else if the letter is empty, we want to resassign the variable to be empty
  else other letters we will set each letter that will find  that move backward one step.
- after all the letters moving backward, it will stop and return the output of the moving backward letters.
=end

def encrypt (letter)
  arr=[]
  idx=0
 while idx < letter.length
  if letter[idx]=="z"
     letter[idx]="a"
     arr<<letter[idx]
   elsif letter[idx]==" "
     letter[idx]=" "
     arr<<letter[idx]
   else
     forward=letter[idx].next
     arr<<forward
    end
    idx+=1
  end
  return arr.join("")
end


def decrypt (letter)
 arr=[]
 idx=0
 while idx < letter.length
  alphabet="abcdefghijklmnopqrstuvwxyz"
  if letter[idx]=="z"
     letter[idx]="a"
     arr<<letter[idx]
   elsif letter[idx]==" "
     letter[idx]=" "
     arr<<letter[idx]
   else
     letter_previous=letter[idx]
     number=alphabet.index(letter_previous)
     backward_num=number-1
     backward_letter=alphabet[backward_num]
     arr<<backward_letter
     end
     idx+=1
  end
  return arr.join("")
end

puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")

decrypt(encrypt("swordfish"))
# First thing is happen is inside the parenthesis of the encrypt method. The output of the encrypt method become the argument to decrypt.

puts "Do you want to encrypt or decrypt a password?"
  crypt=gets.chomp
  if crypt == "encrypt"
    puts "Please type password here:"
    password=gets.chomp
    output=encrypt(password)
    puts "Your encryption is #{output}. "
  elsif crypt == "decrypt"
    puts "Please type password here:"
    password=gets.chomp
    output= decrypt(password)
    puts "Your decryption is #{output}."
  else
    puts "Please enter encrypt or decrypt."
  end