class CreateGameMetrics < ActiveRecord::Migration[6.1]
  def change
    create_table :game_metrics do |t|
      t.references :user, null: false, foreign_key: true
      t.string :result, null: false
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
