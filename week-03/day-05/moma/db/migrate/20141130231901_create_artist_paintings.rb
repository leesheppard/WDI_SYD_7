class CreateArtistPaintings < ActiveRecord::Migration
  def change
    create_table :artist_paintings do |t|
      t.integer :artist_id
      t.integer :painting_id

      t.timestamps
    end
  end
end
