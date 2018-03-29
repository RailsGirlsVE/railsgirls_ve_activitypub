class AddAccountIdToUsers < ActiveRecord::Migration[5.1]

  def self.up
    add_column :users, :account_id, :bigint
    change_column :users, :account_id, :bigint, :null => false
  end

  def self.down
    remove_column :users, :account_id
  end
end
