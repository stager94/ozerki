class AddBookEmailToConfigures < ActiveRecord::Migration
  def change
    add_column :configures, :book_email, :string
  end
end
