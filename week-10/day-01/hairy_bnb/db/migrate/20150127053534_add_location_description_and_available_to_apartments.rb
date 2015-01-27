class AddLocationDescriptionAndAvailableToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :location, :string
    add_column :apartments, :description, :text
    add_column :apartments, :available, :boolean
  end
end
