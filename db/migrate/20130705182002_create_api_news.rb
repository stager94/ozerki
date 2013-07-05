class CreateApiNews < ActiveRecord::Migration
  def change
    create_table :api_news do |t|

      t.timestamps
    end
  end
end
