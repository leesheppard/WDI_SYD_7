class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :measurement
      t.float :cost
      t.string :image

      t.timestamps
    end
  end
end
