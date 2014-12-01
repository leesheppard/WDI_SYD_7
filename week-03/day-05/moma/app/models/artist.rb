class Artist < ActiveRecord::Base
  has_many :artist_paintings
  has_many :paintings, through: :artist_paintings
end
