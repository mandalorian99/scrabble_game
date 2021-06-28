class AddUniqueConstraintToUsersPhoneNumber < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :phone_number, unique: true
  end
end
