class AddEmailToConfigures < ActiveRecord::Migration
  def change
    add_column :configures, :email, :string, default: "noreply@ozerki.dn.ua"
  end
end
