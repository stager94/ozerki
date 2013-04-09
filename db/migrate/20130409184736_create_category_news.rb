class CreateCategoryNews < ActiveRecord::Migration
  def change
    create_table :category_news do |t|
      t.string :title
      t.string :slug
      t.text :snippet
      t.string :keywords
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth
      t.boolean :display, default: true
      
      t.timestamps
    end
  end
end
