numbers = (0...1000)
sum = 0

numbers.each do |n|
  if n % 3 == 0 || n % 5 == 0
    sum += n
  end
end

puts sum


result =  (0...1000).reduce(0) do |sum, n|
  if n % 3 == 0 || n % 5 == 0
    sum + n
  else
    sum
  end
end

puts result




















