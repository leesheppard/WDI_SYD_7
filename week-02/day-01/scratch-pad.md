2xx - Successful
  200: OK
  201: Created
3xx - Redirects
  301: Permanent
  302: Temporary
4xx - Not accessible
  401: Unauthorized
  404: Not Found
5xx - Errors
  500: Internal Server Error


POST - Create
GET - Read
PUT/PATCH - Update
DELETE - Delete
HEAD - Just grab the headers

URI - Universal Resource Identifier
  /screencasts - list of screencasts
  /screencasts/1 - singular screencast

Method - What we want to do
  GET, POST, PUT/PATCH, DELETE
  Show/List, Create, Update, Delete

Headers - Extra information

Response Body - Content
Request Body - Parameters / Details / Form Fields

Request - What is being sent TO the server
Response - What is being sent BACK FROM the server

Client - Browser, FTP Program
Server - Process or program on a computer connected to the internet and accessible via a port

Port - Address to a program on a computer
IP Adress - Address to a computer

DNS - Way to translate URLs to ip addresses

Status codes - Defines the successful or non-successful state of a response
  200 (OK), 201 (Created), 301 (Permanent), See above ^





# sinatra.rb

require "sinatra"

get '/posts' do
  @posts = Post.all
end

# page.erb

<% @posts.each do |post| %>
<h2><%= post.title %></h2>
<p><%= post.content %></p>
<% end %>















