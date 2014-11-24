require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'active_support/all'
require 'pg'


get '/' do
  if params[:username].present?
    username = params[:username]

    conn = PG.connect(:dbname => 'facebook_db', :host => 'localhost')

    sql = "SELECT id FROM facebook_graph WHERE username = '#{username}';"
    query_result = conn.exec(sql)

    if !query_result.num_tuples.zero?
      id = query_result[0]["id"]
    else
      url = "https://graph.facebook.com/#{username}"
      html = HTTParty.get(url)
      @hash = html.parsed_response

      insert_sql = "INSERT INTO facebook_graph (facebook_id, name, first_name, last_name, link, username, gender, locale) VALUES (#{@hash["id"].to_i}, '#{@hash["name"]}', '#{@hash["first_name"]}', '#{@hash["last_name"]}', '#{@hash["link"]}', '#{@hash["username"]}', '#{@hash["gender"][0]}', '#{@hash["locale"]}') RETURNING id;"
      id = conn.exec(insert_sql)[0]["id"]
    end

    conn.close
    redirect "/view/#{id}"
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
