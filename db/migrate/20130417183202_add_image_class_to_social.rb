class AddImageClassToSocial < ActiveRecord::Migration
  def change
    add_column :socials, :image_class, :string
  end
end
