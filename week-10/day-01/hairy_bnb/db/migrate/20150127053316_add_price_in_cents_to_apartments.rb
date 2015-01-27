class AddPriceInCentsToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :price_in_cents, :integer
  end
end
