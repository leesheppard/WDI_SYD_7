require "sinatra"
require "sinatra/reloader"

get '/' do
  erb :home, layout: :layout
end

get '/students/:name' do
  student_name = params[:name]
  @the_student = student_data[student_name]
  erb :student, layout: :layout
end