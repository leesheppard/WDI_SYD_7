class Book < ActiveRecord::Base
  has_many :recipes
end
