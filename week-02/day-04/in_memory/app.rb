require "sinatra"
require "sinatra/reloader"

class Storage
  def self.storage
    @storage ||= []
  end
end

get '/' do
  @orders = Storage.storage
  erb :home
end

post '/order-coffee' do
  Storage.storage << {
    name: params[:name],
    coffee: params[:coffee]
  }
  redirect '/'
end