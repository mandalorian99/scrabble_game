class CreateLeaderBoard < ActiveRecord::Migration[6.1]
  def change
    create_table :leader_boards do |t|
      t.references :user, null: false
      t.integer :score, default: 0
      t.integer :total_games, default: 0
      t.integer :win, default: 0
      t.integer :loss, default: 0
      t.integer :stale, default: 0

      t.timestamps
    end
  end
end
