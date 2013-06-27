class AddRoomsToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :rooms, :integer
  end
end
