class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :description
      t.text :content
      t.string :link

      t.timestamps null: false
    end
  end
end
