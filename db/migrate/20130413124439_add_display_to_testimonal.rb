class AddDisplayToTestimonal < ActiveRecord::Migration
  def change
    add_column :testimonals, :display, :boolean
  end
end
