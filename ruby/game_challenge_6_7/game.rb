class Game
    def initialize(word)
        @word = word
        @guess = []
    end

    def get_word
        word = @word
    end

    def add_item(item)
        @list<<item
    end

    def delete_item(item)
        @list.delete(item)
        @list
    end

    def get_item(index)
        @list[index]
    end

    
end