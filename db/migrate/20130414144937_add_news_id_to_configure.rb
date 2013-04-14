class AddNewsIdToConfigure < ActiveRecord::Migration
  def change
    add_column :configures, :news_id, :integer
  end
end
