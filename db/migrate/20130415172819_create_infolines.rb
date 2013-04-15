class CreateInfolines < ActiveRecord::Migration
  def change
    create_table :infolines do |t|
      t.string :title
      t.string :route
      t.references :new
      t.references :page
      t.string :path
      t.boolean :display

      t.timestamps
    end
    add_index :infolines, :new_id
    add_index :infolines, :page_id
  end
end
