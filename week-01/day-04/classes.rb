# class Car
#   attr_accessor :color, :make, :model, :year, :top_speed

#   def print
#     puts "This is the car:"
#     puts "Color: #{self.color}"
#     puts "Make: #{self.make}"
#     puts "Model: #{self.model}"
#     puts "Top Speed: #{self.top_speed}"
#     puts "Year: #{self.year}"
#   end
# end

# jag_e = Car.new
# jag_e.color = "Green"
# jag_e.make = "Jaguar"
# jag_e.model = "E-Type"
# jag_e.year = 1959
# jag_e.top_speed = 241

# jag_e.print













class Person
  attr_accessor :first_name, :last_name

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end

jack = Person.new
jack.first_name = "Jack"
jack.last_name = "Watson-Hamblin"
puts jack.full_name






















