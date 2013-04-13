class AddDefaultToGallery < ActiveRecord::Migration
  def change
  	change_column :galleries, :display, :boolean, default: true
  end
end
