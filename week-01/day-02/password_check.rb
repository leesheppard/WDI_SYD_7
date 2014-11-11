password = "abc12345"

attempts = 0

begin
  puts "What is the password?"
  answer = gets.strip
  attempts += 1
end until password == answer || attempts == 3