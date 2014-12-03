class Song < ActiveRecord::Base
  belongs_to :artist

  has_many :mixtape_songs
  has_many :mixtapes, through: :mixtape_songs
end
