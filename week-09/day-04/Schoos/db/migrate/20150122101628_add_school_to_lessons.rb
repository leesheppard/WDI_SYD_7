class AddSchoolToLessons < ActiveRecord::Migration
  def change
    add_reference :lessons, :school, index: true
    add_foreign_key :lessons, :schools
  end
end
