class CreateGameMetrics < ActiveRecord::Migration[6.1]
  def change
    create_table :game_metrics do |t|
      t.references :player, null: false, foreign_key: {to_table: :users}
      t.string :result, null: false
      t.references :game, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
