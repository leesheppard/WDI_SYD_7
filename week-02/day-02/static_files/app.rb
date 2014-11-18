require "sinatra"
require "sinatra/reloader"

get '/' do
  erb :home, layout: :layout
end