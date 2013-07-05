class AddLowerTitleToNews < ActiveRecord::Migration
  def change
    add_column :news, :lower_title, :string
  end
end
