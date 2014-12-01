class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :course
      t.string :serving_size
      t.text :instructions
      t.string :image
      t.integer :book_id

      t.timestamps
    end
  end
end
