class AddFieldToUserTables < ActiveRecord::Migration
  def change
    add_column :users, :user_activated_on, :datetime
    add_column :users, :last_login, :datetime
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :active, :boolean
  end
end
