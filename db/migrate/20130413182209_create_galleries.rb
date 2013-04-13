class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :slug
      t.references :category_gallery
      t.attachment :photo
      t.string :author
      t.text :description
      t.string :keywords
      t.boolean :display

      t.timestamps
    end
    add_index :galleries, :category_gallery_id
  end
end
