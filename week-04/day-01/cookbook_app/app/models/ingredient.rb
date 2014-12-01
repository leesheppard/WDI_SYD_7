# == Schema Information
#
# Table name: ingredients
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  measurement :string(255)
#  cost        :float
#  image       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Ingredient < ActiveRecord::Base
	has_many :ingredients_recipes
	has_many :recipes, through: :ingredients_recipes
end
