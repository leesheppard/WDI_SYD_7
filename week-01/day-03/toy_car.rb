part_two = ["Wheel One", "Wheel Two", "Wheel Three", "Wheel Four"]
part_one = "Car Body"
part_three = "Yellow Paint"

def construct_car(  part1, part2, part3         )

  toy_car = "The toy car is made of:\n"
  
  parts.each do |part|
    toy_car += "* #{part}\n"
  end

  toy_car
end

the_constructed_toy_car = construct_car([part_one, part_two, part_three])
puts the_constructed_toy_car