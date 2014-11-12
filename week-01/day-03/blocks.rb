# # people = ["Jack", "Wolf", "Bilbo Baggins"]

# people = [
#   {
#     age: 21,
#     name: "Jack Watson-Hamblin",
#     address: "Fake Address Becaise no stalking"
#   },
#   {
#     age: 21,
#     name: "John Smith",
#     address: "Fake Address Becaise no stalking",
#     family_members: ["Jane", "Samantha"]
#   },
#   {
#     age: 21,
#     name: "Jenny Li",
#     address: "Fake Address Becaise no stalking",
#   }
# ]

# people.each do |person|
#   puts person[:name]
#   puts person[:age]
#   puts
# end

# max_loop_number = people.length
# counter = 0

# while counter < max_loop_number
#   person = people[counter]

#   puts person.upcase

#   counter += 1
# end

students = ['frodo baggins', 'samwise gamgee', 'peregrin took', 'meriadoc brandybuck']

# How dow we make these upppercase?

# students.each do |student|
#   puts student.capitalize
# end

# students.each do |student|
#   unless student == "samwise gamgee"
#     puts student.capitalize
#   else
#     puts student
#   end 
# end

cap_students = students.map do |student|
  student.upcase
end

# p cap_students

students_cap = []

students.each do |student|
  students_cap << student.capitalize
end

# p students_cap
# p students


students = ['frodo baggins', 'samwise gamgee', 'peregrin took', 'meriadoc brandybuck']

splits = students.map do |student|
  student.split(" ").map { |name_part|
    name_part.capitalize
  }.join(" ")
end

p splits


"First Name,Last Name,Address,Email"
p "Jack,Watson-Hamblin,Fake Street,info@fluffyjack.com".split(",")




numbers = (1..100).map do |number|
  x = number * 10
  y = x - x / 2
  y * 1.5
end

# p numbers

tweets = []

tweets.map do |tweet|
  tweet.gsub("cloud", "butt")
end


5.times do |x|
  # puts "I've been through this loop #{x} times"
end




5.upto(10) do
  # puts "Test"
end




# 10.downto(1) { puts "test test" }





























