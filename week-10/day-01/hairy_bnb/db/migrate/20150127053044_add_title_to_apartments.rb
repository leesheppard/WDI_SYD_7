class AddTitleToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :title, :string
  end
end
