class Painting < ActiveRecord::Base
  has_many :artist_paintings
  has_many :artists, through: :artist_paintings
end
