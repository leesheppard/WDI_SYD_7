class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.string :breed
      t.datetime :arrival_time
      t.datetime :departure_time
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
