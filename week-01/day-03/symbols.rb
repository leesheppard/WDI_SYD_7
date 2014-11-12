car = {
  name: "Bessy",
  speed: :fast
}

car[:make] = "Holden"

puts car[:make]

case car[:speed]
when :fast
  puts "fast"
when :medium
  puts "medium"
when :slow
  puts "slow"
else
  puts "stopped"
end


# speed = :fast

# if speed == :fast
#   puts "SLOW DOWN SPEED RACER!"
# elsif speed == :medium
#   puts "fksdjhf"
# elsif speed == :slow
#   puts "fkjhsad"
# end