class AddAliasIndexToNews < ActiveRecord::Migration
  def change
  	add_index :news, :alias
  end
end
