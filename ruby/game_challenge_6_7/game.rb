class Game
    def initialize(word)
        @word = word
        @word_array = @word.chars
        @underscore_array = []
        @guess_array = []
        @guess_i = 0
        @index = 0
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
        @guess_array << guess
    end

    def guess_count(guess)
        #If the guess matches a prior guess, then do not increment guess count
        #if the guess does not match a prior guess, then do increment guess count
        @guess_array.each do |element|
            if element!=guess
                @guess_i += 1
            end
        end
        @guess_i
    end

    def check_letter(guess)
        #this will compare the guess to the given word array
        n = 0
        while n < @word_array.length - 1
            if @word_array[n] == guess
                @guess_i += 1
                @underscore_array[n] = @word_array[n]
            end
            n += 1
        end
        return @underscore_array
    end

    def win_or_lose
        #this will output "win" if all letters are correct
        #else, this will output "lose"
        if @underscore_array == @word_array
            return "You win!"
        else
            return "You lose!"
        end
    end
end

