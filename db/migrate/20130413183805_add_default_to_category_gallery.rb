class AddDefaultToCategoryGallery < ActiveRecord::Migration
  def change
  	change_column :category_galleries, :display, :boolean, default: true
  end
end
