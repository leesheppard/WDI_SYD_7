year = 1997

if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  puts "#{year} is a leap year"
else
  puts "#{year} is not a leap year"
end
