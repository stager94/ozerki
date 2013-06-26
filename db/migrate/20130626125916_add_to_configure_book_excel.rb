class AddToConfigureBookExcel < ActiveRecord::Migration
  def up
  	change_table :configures do |t|
  		t.attachment :book_excel
  	end
  end
end
