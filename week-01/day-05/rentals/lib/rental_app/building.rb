module RentalApp
  class Building
    attr_accessor :address,
                  :style,
                  :has_doorman,
                  :is_walkup,
                  :number_of_floors,
                  :apartments

    def initialize(address, style, has_doorman, is_walkup, number_of_floors, apartments)
      self.address = address
      self.style = style
      self.has_doorman = has_doorman
      self.is_walkup = is_walkup
      self.number_of_floors = number_of_floors
      self.apartments = apartments
    end

    def to_s
      # address = "Blah blah"

      "Building\n" +
      "  Address: #{address}\n" +
      "  Style: #{style}\n" +
      "  Has Doorman: #{has_doorman}\n" +
      "  Is Walkup: #{is_walkup}\n" +
      "  Number of floors: #{number_of_floors}\n"
    end
  end
end