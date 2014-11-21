require "sinatra"
require "sinatra/reloader"
require "httparty"

get '/' do
  # if params[:movie_title]
  #   search_term = params[:movie_title].gsub(' ', '+')
  #   response = HTTParty.get("http://www.omdbapi.com/?t=#{search_term}")
  #   @movies = JSON(response)["Search"]
  # end
  erb :home
end

get '/search' do
  search_term = params[:query].gsub(' ', '+')
  response = HTTParty.get("http://www.omdbapi.com/?s=#{search_term}")
  @movies = JSON(response)["Search"]

  erb :list
end

get '/movies/:imdb_id' do
  movie_id = params[:imdb_id]
  response = HTTParty.get("http://www.omdbapi.com/?i=#{movie_id}")
  @movie = JSON(response)

  erb :movie
end


















