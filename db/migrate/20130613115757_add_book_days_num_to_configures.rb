class AddBookDaysNumToConfigures < ActiveRecord::Migration
  def change
    add_column :configures, :book_days_num, :int, default: 45
  end
end
