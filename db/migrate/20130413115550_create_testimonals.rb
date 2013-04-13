class CreateTestimonals < ActiveRecord::Migration
  def change
    create_table :testimonals do |t|
      t.text :testimonal
      t.string :author
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
