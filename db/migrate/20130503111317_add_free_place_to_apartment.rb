class AddFreePlaceToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :free_place, :integer, default: 0
  end
end
