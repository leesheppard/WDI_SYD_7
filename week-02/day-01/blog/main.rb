require "sinatra"
require "sinatra/reloader"

get '/' do
  erb :form, layout: :page_layout
end

post '/posts' do
  @title = params[:title]
  @content = params[:content]
  @author = params[:author]
  erb :post, layout: :page_layout
end