class AddBookIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :book_id, :integer
  end
end
