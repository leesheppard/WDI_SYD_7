require 'pg'
require 'httparty'


puts "What's the user?"
facebook_name = gets.chomp

url = "https://graph.facebook.com/#{facebook_name}"
html = HTTParty.get(url)
hash = html.parsed_response


conn = PG.connect(:dbname => 'facebook_db', :host => 'localhost')
sql = "INSERT INTO facebook_graph (facebook_id, name, first_name, last_name, link, username, gender, locale) VALUES (#{hash["id"].to_i}, '#{hash["name"]}', '#{hash["first_name"]}', '#{hash["last_name"]}', '#{hash["link"]}', '#{hash["username"]}', '#{hash["gender"][0]}', '#{hash["locale"]}');"

p conn.exec(sql)

puts "Table rows:"
select_sql = "SELECT * FROM facebook_graph"
@rows = conn.exec(select_sql)
@rows.each do |row|
  puts row
end

conn.close

=begin {
  "id"=>"100000444073891", 
  "name"=>"Tom Anderson", 
  "first_name"=>"Tom", 
  "last_name"=>"Anderson", 
  "link"=>"http://www.facebook.com/myspacetom", 
  "username"=>"myspacetom", 
  "gender"=>"male", 
  "locale"=>"en_US"
}
=end