require "sinatra"
require "sinatra/reloader"

get '/roman_numerals/:number' do
  @real_number = params[:number].to_i

  @roman_numeral = "I" * @real_number

  @roman_numeral = @roman_numeral.gsub("I" * 1000, "M").
                    gsub("I" * 900,  "CM").
                    gsub("I" * 500,  "D").
                    gsub("I" * 400,  "CD").
                    gsub("I" * 100,  "C").
                    gsub("I" * 90,   "XC").
                    gsub("I" * 50,   "L").
                    gsub("I" * 40,   "XL").
                    gsub("I" * 10,   "X").
                    gsub("I" * 9,    "IX").
                    gsub("I" * 6,    "VI").
                    gsub("I" * 5,    "V").
                    gsub("I" * 4,    "IV")

  erb :roman_numerals

end

get '/posts/:id/:slug' do
  "Load blog post with ID #{params[:id]} and slug #{params[:slug]}"
end

get '/search/:query/:sort' do
  "#{params[:query]} #{params[:sort]}"
end

post '/blog' do
  @title = params[:title].upcase
  @content = params[:content]
  erb :blog_post, layout: :page
end

post '/users' do
  "You signed up with the email address: " +
  "#{params[:email]}" +
  " and password: #{params[:password]}"
end

get '/' do
  "Welcome home"
end

get "/search/:query" do
  "You are searching for: #{params[:query]}"
end

get "/hello/:name" do
  "Hello #{params[:name]}"
end

get "/screencasts" do
  "The list of screencasts"
end