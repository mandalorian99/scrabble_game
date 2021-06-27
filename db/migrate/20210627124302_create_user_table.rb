class CreateUserTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: '', limit: 50
      t.string :phone_number, limit: 10

      t.timestamps
    end
  end
end
