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

# Store user input in database

# Give user output from database