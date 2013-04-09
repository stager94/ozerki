class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.string :site_title
      t.string :title_separator

      t.timestamps
    end
  end
end
