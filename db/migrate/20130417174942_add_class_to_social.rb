class AddClassToSocial < ActiveRecord::Migration
  def change
    add_column :socials, :class, :string
  end
end
