# This program is meant to store exercise data in a database. To this end, I will collect the data and store it in a hash, as in the kitten_explosion example. The user input will be the date as a string, the exercise as a string, the weight lifted as an integer, the total number of reps as an integer, the number of minutes to complete the session as a float, and whether the session was hard as a boolean. Of course, the user will be able to request a copy of the records in output.

# require gems
require 'sqlite3'
# maybe I'll want some random data for tests.
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("strength.db")
# I am confident that I will want to store my data as a hash
db.results_as_hash = true

# I have to create the table before I can use it
create_table_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS strength(
        id INTEGER PRIMARY KEY,
        date VARCHAR(255),
        exercise VARCHAR(255),
        weight INT,
        reps INT,
        minutes REAL,
        difficult BOOLEAN
    )
SQL

db.execute(create_table_cmd)

# Collect user input for the day's exercise

def user_input
    puts "What is today's date?"
    date = gets.chomp
    puts "What exercise did you do?"
    exercise = gets.chomp
    # The weight should be consistently kilos or pounds
    puts "What weight did you use?"
    weight = gets.chomp.to_i
    # Of course, the sets are broken into sets, but I just want to demonstrate this program for now. I can add reps per set later. This could get complicated. For example, I often do rep ladders. This would be tedious to enter the reps per set, and it would require more looping than I feel like at the moment.
    puts "How many reps did you do?"
    reps = gets.chomp.to_i
    puts "How many minutes did the session take?"
    minutes = gets.chomp.to_f
    puts "Was the session difficult? (true or false)"
    difficult = gets.chomp
    input_array = [date, exercise, weight, reps, minutes, difficult]
end

#def fake_input
#    date = Faker::Date.backward(365)
#    exercise = "double clean and press with double front squat complex"
#    weight = 106
#    reps = Faker::Number.number(2)
#    minutes = Faker::Number.number(2)
#    difficult = true
#    fake_input_array = [date, exercise, weight, reps, minutes, difficult]
#end


# Store user input in database

def add_input (db, user_input)
    db.execute("INSERT INTO strength (date, exercise, weight, reps, minutes, difficult) VALUES (?, ?, ?, ?, ?, ?)", [user_input])
end

#def add_fake_input (db, fake_input)
#    db.execute("INSERT INTO strength (date, exercise, weight, reps, minutes, difficult) VALUES (?, ?, ?, ?, ?, ?)", [fake_input])
#end

# Give user output from database
strength = db.execute("SELECT * FROM strength")
strength.each do |strength|
    puts "On #{strength['date']}, you did #{strength['exercise']} with #{strength['weight']} for #{strength['reps']} reps in #{strength['minutes']} minutes. The session was difficult:  #{strength['difficult']}."
end

#p user_input
add_input(db, user_input)
#10.times do
#    add_fake_input(db, fake_input)
#end


# explore ORM by retrieving data

#puts strength.class
#p strength