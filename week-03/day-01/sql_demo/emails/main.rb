require 'pry'
require 'pg'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :form
end

post '/' do
  email = params[:email]

  sql = "INSERT INTO emails (email) VALUES ('#{email.gsub(/'/, "\\\'")}');"
  run_sql(sql)

  redirect '/all'
end

get '/all' do
  sql = "SELECT id, email FROM emails;"
  @emails = run_sql(sql)

  erb :all
end

def run_sql(sql)
  conn = PG.connect(:dbname => "wdi", :host => "localhost")
  res = conn.exec(sql)
  conn.close
  res
end