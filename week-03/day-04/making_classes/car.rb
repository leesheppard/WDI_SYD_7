class Car
  attr_accessor :make, :model, :year, :current_speed

  def initialize(attr)
    @make = attr[:make]
    @model = attr[:model]
    @year = attr[:year]
    self.current_speed = 0
  end

  def start_race
    self.drive(5000)
  end

  def current_speed=(current_speed)
    @current_speed = current_speed
  end

  def drive(speed)
    # put foot on pedel
    # push pedel in
    # move steering wheel
    @current_speed = speed
  end
end

a_car = Car.new({
  make: "Holden",
  model: "Club Sport",
  year: 2003
})
a_car.current_speed #=> 0
a_car.drive(120)
a_car.current_speed #=> 120
a_car.drive(80)
a_car.current_speed #=> 80
a_car.drive(300)



def a_car.press_big_button
  puts "GO SUPER FAST!"
end














