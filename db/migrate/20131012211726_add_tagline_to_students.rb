class AddTaglineToStudents < ActiveRecord::Migration
  def change
    add_column :students, :tagline, :text
  end
end
