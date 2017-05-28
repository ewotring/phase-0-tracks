#Initialize Santa class
class Santa
    attr_reader :age, :ethnicity
    attr_accessor :gender

    #Define initialize method
    def initialize(gender, ethnicity)
        puts "Initializing Santa instance...\n\n"
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
    end
    
    #Define eat_milk_and_cookies method that takes a type of cookie and outputs that it was tasty
    def eat_milk_and_cookies(cookie_type)
        puts "That was a good #{cookie_type}!\n\n"
    end

    #Define speak method to have santa give holiday greetings
    def speak
        puts "Ho, ho, ho! Haaappy holidays!\n\n"
    end

    #getter methods
    #def age
    #    @age
    #end

    #def ethnicity
    #    @ethnicity
    #end

    #setter methods
    def celebrate_birthday
        @age += 1
    end

    def get_mad_at(reindeer_name)
        i = 0
        while i<@reindeer_ranking.length
            if @reindeer_ranking[i]==reindeer_name
                @reindeer_ranking << @reindeer_ranking.delete(reindeer_name)
            end
            i += 1
        end
        return @reindeer_ranking
    end

    #def gender=(new_gender)
    #    @gender = new_gender
    #end

end

santa_1 = Santa.new("N/A", "N/A")
santa_1.eat_milk_and_cookies("chocolate chip cookie")
santa_1.speak
puts "Previous age was #{santa_1.age}"
puts "New age is #{santa_1.celebrate_birthday}"
puts "Ethnicity is #{santa_1.ethnicity}"
puts "New reindeer ranking is #{santa_1.get_mad_at ("Dasher")}"
puts "New gender is #{santa_1.gender = "No answer"}"


santa_2 = Santa.new("agender", "black")
santa_2.eat_milk_and_cookies("chocolate chip cookie")
santa_2.speak
puts "#{santa_2.age}"
puts "#{santa_2.ethnicity}"
puts "#{santa_2.get_mad_at("Dancer")}"
puts "#{santa_2.gender = "No answer"}"


santa_3 = Santa.new("female", "Latino")
santa_4 = Santa.new("bigender", "white")
santa_5 = Santa.new("male", "Japanese")
santa_6 = Santa.new("female", "prefer not to say")
santa_7 = Santa.new("gender fluid", "Mystical Creature (unicorn)")
santa_8 = Santa.new("N/A", "N/A")

