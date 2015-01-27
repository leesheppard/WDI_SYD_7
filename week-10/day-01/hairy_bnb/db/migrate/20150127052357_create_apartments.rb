class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|

      t.timestamps null: false
    end
  end
end
