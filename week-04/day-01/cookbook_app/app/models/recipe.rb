# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  course       :string(255)
#  cooktime     :string(255)
#  servingsize  :string(255)
#  instructions :string(255)
#  image        :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Recipe < ActiveRecord::Base
	belongs_to :book

	has_many :ingredients_recipes
	has_many :ingredients, through: :ingredients_recipes
end
