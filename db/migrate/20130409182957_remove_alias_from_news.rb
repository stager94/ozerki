class RemoveAliasFromNews < ActiveRecord::Migration
  def change
  	remove_column :news, :alias
  	add_column :news, :slug, :string
  end
end
