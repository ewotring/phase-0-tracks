#Initialize Santa class
class Santa
    
    #Define initialize method
    def initialize
        puts "Initializing Santa instance...\n\n"
    end
    
    #Define eat_milk_and_cookies method that takes a type of cookie and outputs that it was tasty
    def eat_milk_and_cookies(cookie_type)
        puts "That was a good #{cookie_type}!\n\n"
    end

    #Define speak method to have santa give holiday greetings
    def speak
        puts "Ho, ho, ho! Haaappy holidays!\n\n"
    end

end

santa_1 = Santa.new

santa_1.eat_milk_and_cookies("chocolate chip cookie")
santa_1.speak
