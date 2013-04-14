class AddDisplayOnRootToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :display_on_root, :boolean, default: false
  end
end
