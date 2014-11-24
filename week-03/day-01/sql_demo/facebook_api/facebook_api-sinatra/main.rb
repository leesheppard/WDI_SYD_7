require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'active_support/all'
require 'httparty'
require 'pg'


get '/' do
  if params[:name].present?
    name = params[:name]
    url = "https://graph.facebook.com/#{name}"
    html = HTTParty.get(url)
    @hash = html.parsed_response

    conn = PG.connect(:dbname => 'facebook_db', :host => 'localhost')
    sql = "INSERT INTO facebook_graph (facebook_id, name, first_name, last_name, link, username, gender, locale) VALUES (#{@hash["id"].to_i}, '#{@hash["name"]}', '#{@hash["first_name"]}', '#{@hash["last_name"]}', '#{@hash["link"]}', '#{@hash["username"]}', '#{@hash["gender"][0]}', '#{@hash["locale"]}');"
    conn.exec(sql)
  end

  erb :view
end

get '/view/:id' do
  id = params[:id]

  sql = "SELECT * FROM facebook_graph WHERE id = #{id};"
  conn = PG.connect(:dbname => 'facebook_db', :host => 'localhost')
  @hash = conn.exec(sql).first
  # binding.pry

  erb :view
end
