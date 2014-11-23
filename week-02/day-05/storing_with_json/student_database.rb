require "json"

# Step 1: Check file exists?
unless File.exists?('student_database.txt')
  # Create the file
  File.open('student_database.txt', 'a+').close
else
  # Step 5: Print the database
  the_file_data = File.open('student_database.txt', 'r').read
  puts JSON.parse(the_file_data) rescue []
end

# Step 2: Get names

puts "Enter student names one at a time"

name = gets.strip

if File.exists? 'student_database.txt'
  the_file_data = File.open('student_database.txt', 'r').read
  student_names = JSON.parse(the_file_data) rescue []
else
  student_names = []
end

while name != 'q'
  student_names << name
  name = gets.strip
end

# Step 3: Convert to JSON
student_json = JSON.generate(student_names)

# Step 4: Save the JSON
File.open('student_database.txt', 'w+') do |sd|
  sd.write(student_json)
end

the_file_data = File.open('student_database.txt', 'r').read
puts JSON.parse(the_file_data)












