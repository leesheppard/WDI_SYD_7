require 'rainbow'

# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  gets.chomp
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
  print "first number: "
  a = gets.to_f
  print "second number: "
  b = gets.to_f
  
  case operation
  when 'a'
    puts "#{a + b}"
  when 's'
    puts "#{a - b}"
  when 'm'
    puts "#{a * b}"
  when 'd'
    puts "#{a / b}"
  else
    puts "WRONG!!!!!"
    basic_calc
  end

  gets
end

def advanced_calc
  print "(p)ower, (s)qrt: "

end


response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  basic_calc

  response = menu
end













