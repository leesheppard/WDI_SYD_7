class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :hometown
      t.text :bio
      t.integer :years_active
      t.string :label

      t.timestamps
    end
  end
end
