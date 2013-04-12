class RenameAliasToSlugInPage < ActiveRecord::Migration
  def change
  	remove_column :pages, :alias
  	add_column :pages, :slug, :string
  end
end
