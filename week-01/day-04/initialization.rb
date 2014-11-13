class Car
  attr_accessor :color, :make, :model, :year, :top_speed

  def initialize(color, make, model, year, top_speed = 220)
    self.color = color
    self.make = make
    self.model = model
    self.year = year
    self.top_speed = top_speed
  end

  def print
    puts "This is the car:"
    puts "Color: #{self.color}"
    puts "Make: #{self.make}"
    puts "Model: #{self.model}"
    puts "Top Speed: #{self.top_speed}"
    puts "Year: #{self.year}"
  end
end

jag_e = Car.new("Green", "Jaguar", "E-Type", 1959)
jag_e.print

# jag_e = Car.new
# jag_e.color = "Green"
# jag_e.make = "Jaguar"
# jag_e.model = "E-Type"
# jag_e.year = 1959
# jag_e.top_speed = 241

















