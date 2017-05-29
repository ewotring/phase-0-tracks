#module Shout
#    # we'll put some methods here soon, but this code is fine for now!
#    def self.yell_angrily(words)
#        words + "!!!" + " :("
#    end
#
#    def self.yelling_happily(words)
#        words + "!!!" + " :)"
#    end
#
#end
#
#self.yell_angrily("Never")
#
#self.yelling_happily("Huzzah")#

module Shout
    def yell_angrily(words)
        words + "!!!" + " :("
    end

    def yelling_happily(words)
        words + "!!!" + " :)"
    end
end

class Coach
    include Shout
end

class Bus_driver
    include Shout
end

coach = Coach.new
p coach.yelling_happily("We win")
p coach.yell_angrily("We lose")

bus_driver = Bus_driver.new
p bus_driver.yelling_happily("Shift over")
p bus_driver.yell_angrily("Grind gears")