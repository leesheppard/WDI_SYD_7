class Mixtape < ActiveRecord::Base
  belongs_to :user

  has_many :mixtape_songs
  has_many :songs, through: :mixtape_songs
end
