class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :text
      t.text :notes
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
