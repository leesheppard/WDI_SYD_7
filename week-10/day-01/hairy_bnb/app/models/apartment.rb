class Apartment < ActiveRecord::Base
  def book(tenant)
    self.available = false
  end
end
