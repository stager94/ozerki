class AddKeywordToNew < ActiveRecord::Migration
  def change
    add_column :news, :tag_list, :string
  end
end
