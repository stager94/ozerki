class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :from
      t.string :to
      t.integer :places
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
