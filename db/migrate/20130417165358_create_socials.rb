class CreateSocials < ActiveRecord::Migration
  def change
    create_table :socials do |t|
      t.string :title
      t.string :path
      t.attachment :image
      t.boolean :display
      t.integer :position

      t.timestamps
    end
  end
end
