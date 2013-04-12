class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :alias
      t.text :text
      t.text :snippet
      t.string :keywords
      t.string :author

      t.timestamps
    end
  end
end
