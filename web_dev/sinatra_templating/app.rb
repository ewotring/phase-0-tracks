# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/database/search' do
  erb :search
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

# create a form to
# use the parameters to search through the database
# and return the students found
# if none are found
# return saying no students were found
post '/database' do
  student_list = db.execute("SELECT * FROM students")
  search_results = ""
  student_list.each do |student|
    student_name = student.fetch_values("name").join.downcase
    if student_name.include? ("#{params[:name]}")
      search_results << "ID: #{student['id']} | Name: #{student['name']} | Age: #{student['age']} | Campus: #{student['campus']}<br>"
    end
  end
  if search_results == ""
    "No students were found with that name."
  else
    search_results
  end
end