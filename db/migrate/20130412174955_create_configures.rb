class CreateConfigures < ActiveRecord::Migration
  def change
    create_table :configures do |t|
      t.string :site_title
      t.string :title_separator
      t.string :news_per_page
      t.string :module_news_per_page

      t.timestamps
    end
  end
end
