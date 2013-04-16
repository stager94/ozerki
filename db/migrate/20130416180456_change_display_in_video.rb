class ChangeDisplayInVideo < ActiveRecord::Migration
  def change
  	change_column :videos, :display, :boolean, default: true
  end
end
