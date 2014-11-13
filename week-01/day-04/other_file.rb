def print(car)
  puts "This is the car:"
  puts "Color: #{car[:color]}"
  puts "Make: #{car[:make]}"
  puts "Model: #{car[:model]}"
  puts "Top Speed: #{car[:top_speed]}"
  puts "Year: #{car[:year]}"
end

jag_e = {
  color: "Green",
  make: "Jaguar",
  model: "E-Type",
  year: 1959,
  top_speed: 241
}

print(jag_e)













