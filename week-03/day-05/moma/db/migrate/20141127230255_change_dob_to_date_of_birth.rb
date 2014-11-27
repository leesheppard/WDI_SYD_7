class ChangeDobToDateOfBirth < ActiveRecord::Migration
  def change
    rename_column :artists, :dob, :date_of_birth
    rename_column :artists, :name, :first_name
    add_column :artists, :last_name, :string
  end
end
