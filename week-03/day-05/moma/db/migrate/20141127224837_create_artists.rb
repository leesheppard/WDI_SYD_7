class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :nationality
      t.string :period
      t.text :image
      t.date :dob

      t.timestamps
    end
  end
end
