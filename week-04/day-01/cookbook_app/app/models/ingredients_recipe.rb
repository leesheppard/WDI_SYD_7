# == Schema Information
#
# Table name: ingredients_recipes
#
#  id            :integer          not null, primary key
#  ingredient_id :integer
#  recipe_id     :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class IngredientsRecipe < ActiveRecord::Base
	belongs_to :ingredient 
	belongs_to :recipe 
end
