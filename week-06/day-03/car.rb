class Car
  attr_accessor :name, :make, :model

  def initialize(name, make, model)
    self.name = name
    self.make = make
    self.model = model
  end

  def drive
    puts "#{name} is driving"
  end
end