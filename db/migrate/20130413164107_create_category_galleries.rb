class CreateCategoryGalleries < ActiveRecord::Migration
  def change
    create_table :category_galleries do |t|
      t.string :title
      t.string :slug
      t.text :snippet
      t.string :keywords
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth
      t.boolean :display

      t.timestamps
    end
  end
end
