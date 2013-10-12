class CreateTestimonies < ActiveRecord::Migration
  def change
    create_table :testimonies do |t|
      t.string :title
      t.text :content
      t.string :author
      t.string :email
      t.integer :cbo_id

      t.timestamps
    end
  end
end
