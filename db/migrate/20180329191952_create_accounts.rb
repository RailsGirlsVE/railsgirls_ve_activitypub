class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :username, null: false, default: ''
      t.timestamps
    end
  end
end
