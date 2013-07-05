class AddLowerTitleToPages < ActiveRecord::Migration
  def change
    add_column :pages, :lower_title, :string
  end
end
