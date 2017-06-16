# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# RELEASE 0

# write a /contact route that displays an address (you can make up the address)

get '/contact' do
  "Address:<br>
  5647 East Andrews St<br>
  Chicago, IL<br>
  60309"
end

# A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"

get '/great_job/' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# A route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?

get '/add_numbers/:number_1/:number_2' do
  # convert to integers inside the addition
  total_number = params[:number_1].to_i + params[:number_2].to_i
  # convert back to string for output
  total_number.to_s
end

# Optional bonus: Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present.

# My pair and I did something like this in 9.5, before I got to this challenge, so I will base my attempt here on that code and the above code to output the full student list.

# students_campus had to be different from earlier students queries
get '/students_campus/:campus' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    student_campus = student.fetch_values("campus").join.downcase
    if student_campus.include? ("#{params[:campus]}".downcase)
      response << "ID: #{student['id']}<br>"
      response << "Name: #{student['name']}<br>"
      response << "Age: #{student['age']}<br>"
      response << "Campus: #{student['campus']}<br><br>"
    end
  end
  if response == ""
    "No student at that campus."
  else
    response
  end
end

# Is Sinatra the only web app library in Ruby? What are some others?

# It would seem that there are other web app libraries in Ruby. If frameworks fall under the set of libraries, Padrino and Rails are two other frameworks in Ruby.

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?

# There are other options for using databases with sinatra. One example is Datamapper. There are also sinatra extensions called ActiveRecord and Sequel.

# What is meant by the term web stack?

# The web stack is the group of tools needed for web development. Included in these tools are a database interface, a server, a programming language, and an operating system.