class CreateGamesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.references :player_one
      t.references :player_two
      
      t.timestamps
    end
  end
end
