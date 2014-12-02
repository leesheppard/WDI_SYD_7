class Car
  attr_accessor :make, :model, :year

  def make=(make)
    @make = make
  end

  def initialize(make, model, year)
    self.make=(make)
    self.model=(model)
    self.year=(year)
  end
end