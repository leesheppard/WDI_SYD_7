def times(first_number, second_number)
  first_number * second_number
end

def print_result(asdf)
  puts "Number is #{asdf}"
end

x = 5
y = 4

result = times(x, y)

print_result(result)
print_result(times(20, 20))

