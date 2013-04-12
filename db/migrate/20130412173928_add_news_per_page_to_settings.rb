class AddNewsPerPageToSettings < ActiveRecord::Migration
  def change
    add_column :configurations, :news_per_page, :string
    add_column :configurations, :module_news_per_page, :string
  end
end
