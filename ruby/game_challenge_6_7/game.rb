class Game
    attr_accessor :underscore_array, :guess_i

    def initialize(word)
        @word = word
        @word_array = @word.chars
        @underscore_array = []
        @guess_array = []
        @guess_i = 0
        @index = 0
        @guess_repeat = false
    end

    def get_word
        word_local = @word
    end

    def to_array
        @word_array
    end

    def to_underscore
        i = 0
        while i < @word_array.length
            @underscore_array[i] = "_"
            i += 1
        end
        @underscore_array
    end

    def guess_limit
        guess_limit = @word.chars.length
    end

    def guess_array(guess)
        puts "I'm in guess_array"
        @guess_array << guess
        p @guess_array
    end

    def guess_count(guess)
        #If the guess matches a prior guess, then do not increment guess count
        #if the guess does not match a prior guess, then do increment guess count
        puts "#{@guess_correct}"
        @guess_array.each do |element|
            puts "I'm in each #{@guess_i}"
            if element != guess
                puts "I'm in if #{guess_i}"
                @guess_repeat = true
            end
            puts "@guess_repeat is #{@guess_repeat}"
        end

        if @guess_repeat == true
            @guess_i += 1
        end
        @guess_repeat = false
        puts "just before return #{@guess_i}"
        return @guess_i
    end

    def check_letter(guess)
        #this will compare the guess to the given word array
        puts "I'm in check_letter"
        n = 0
        while n < @word_array.length
            if @word_array[n] == guess
            #    @guess_i += 1
                @underscore_array[n] = @word_array[n]
            end
            n += 1
        end
        return @underscore_array
        #p @underscore_array
    end

    def win_or_lose
        #this will output "win" if all letters are correct
        #else, this will output "lose"
        puts "I'm in win_or_lose"
        p @underscore_array
        p @word_array
        if @underscore_array == @word_array
            puts "You win!"
            return "You win!"
        else
            puts "You lose!"
            return "You lose!"
        end
    end
end

# user interface

puts "This is the word array game"

puts "Player 1, please enter your word."
challenge_word = gets.chomp
p challenge_word

game = Game.new(challenge_word)

game.to_underscore
p game.underscore_array
max_attempts = game.guess_limit
p max_attempts

while game.guess_i < max_attempts - 1
    puts "Player 2, enter your guess letter."
    guess_letter = gets.chomp
    p guess_letter
    game.guess_array(guess_letter)
    puts "guess_i is #{game.guess_i}"
    game.guess_count(guess_letter)
    game.check_letter(guess_letter)
    p game.underscore_array
    game.underscore_array
end

game.win_or_lose