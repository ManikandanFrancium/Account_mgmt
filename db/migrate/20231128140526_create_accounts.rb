class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :account_number
      t.string :address
      t.timestamps
    end
  end
end
