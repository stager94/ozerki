class DeleteClassFromApartment < ActiveRecord::Migration
  def change
  	remove_column :apartments, :class
  	add_column :apartments, :apartment_class, :string
  end
end
