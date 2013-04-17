class RemoveClassFromSocial < ActiveRecord::Migration
  def up
  	remove_column :socials, :class
  end
end
