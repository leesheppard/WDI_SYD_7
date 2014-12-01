class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :course
      t.string :cooktime
      t.string :servingsize
      t.string :instructions
      t.string :image

      t.timestamps
    end
  end
end
