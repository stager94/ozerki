class AddToSettings < ActiveRecord::Migration
  def change
  	add_column :configures, :site_keywords, :string
  	add_column :configures, :site_snippet, :text
  end
end
