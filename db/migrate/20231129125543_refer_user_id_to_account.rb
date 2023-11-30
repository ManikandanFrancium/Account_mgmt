class ReferUserIdToAccount < ActiveRecord::Migration[7.1]
  def change
    add_reference :accounts, :user, foreign_key: true
  end
end
