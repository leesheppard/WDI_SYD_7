# width = 10
# height = 20

# puts width * height

# def area(width, height)
#   width * height
# end

# area(10, 20) #=> 200

# area(2, 2) * 20 #=> 80

def leap_year?(year)
  year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
end

def leap_year_check(year)
  if leap_year? year
    puts "#{year} is a leap year"
  else
    puts "#{year} is not a leap year"
  end
end

leap_year_check(1997)
leap_year_check(1996)
leap_year_check(1900)
leap_year_check(2000)


def square(x)
  x * x
end

def volume(length, width, height)
  length * width * height
end

def ask_age
  puts "What is your age?"
  gets.chomp.to_i
end

puts("Your age is : #{ask_age}")

def puts(string_to_print)
  # some crazy stuff
end






















