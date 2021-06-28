class AddPointsToGameMetrics < ActiveRecord::Migration[6.1]
  def change
    add_column :game_metrics, :points, :integer, default: 0
  end
end
