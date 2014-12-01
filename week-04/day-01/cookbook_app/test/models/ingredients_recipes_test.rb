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

require 'test_helper'

class IngredientsRecipesTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
