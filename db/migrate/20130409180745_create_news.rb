class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :alias
      t.string :snippet
      t.string :content
      t.string :author
      t.boolean :root
      t.boolean :display
      t.references :category_new

      t.timestamps
    end
  end
end
