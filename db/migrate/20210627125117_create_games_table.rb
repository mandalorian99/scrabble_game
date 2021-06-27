class CreateGamesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.references :player_one, foreign_key: {to_table: :users}
      t.references :player_two, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
