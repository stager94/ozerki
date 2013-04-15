class AddPositionToInfoline < ActiveRecord::Migration
  def change
    add_column :infolines, :position, :integer
    change_column :infolines, :display, :boolean, default: true
  end
end
