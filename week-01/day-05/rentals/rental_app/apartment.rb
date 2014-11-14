module RentalApp
  class Apartment
    attr_accessor :price,
                  :is_available,
                  :square_foot,
                  :number_of_bedrooms,
                  :number_of_bathrooms

    def initialize(price, is_available, square_foot, number_of_bedrooms, number_of_bathrooms)
      self.price = price
      self.is_available = is_available
      self.square_foot = square_foot
      self.number_of_bedrooms = number_of_bedrooms
      self.number_of_bathrooms = number_of_bathrooms
    end

    def to_s
      "Apartment:\n" +
      "  Price: #{price}\n" +
      "  Is available: #{is_available}\n" +
      "  Square Foot: #{square_foot}\n" +
      "  Number of bedrooms: #{number_of_bedrooms}\n" +
      "  Number of bathrooms: #{number_of_bathrooms}\n"
    end
  end
end