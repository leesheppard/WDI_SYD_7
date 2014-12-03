class CreateMixtapeSongs < ActiveRecord::Migration
  def change
    create_table :mixtape_songs do |t|
      t.integer :song_id
      t.integer :mixtape_id

      t.timestamps
    end
  end
end
