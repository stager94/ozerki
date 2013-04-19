class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :title
      t.string :class
      t.integer :room_number
      t.integer :free_room
      t.boolean :display

      t.timestamps
    end
  end
end
