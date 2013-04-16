class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :path
      t.boolean :display
      t.integer :position

      t.timestamps
    end
  end
end
