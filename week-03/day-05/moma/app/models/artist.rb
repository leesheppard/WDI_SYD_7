class Artist < ActiveRecord::Base
  has_many :paintings
  validates :first_name, presence: true
  validates :last_name, presence: true
end
