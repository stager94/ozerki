class ChangeContentInNew < ActiveRecord::Migration
  def change
  	change_column :news, :content, :text
  	change_column :news, :snippet, :text
  	add_column :news, :precontent, :text
  	change_column :news, :display, :boolean, default: true 
  end
end
