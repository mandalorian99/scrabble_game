class User <  ApplicationRecord
  has_many :game_metrics, foreign_key: :player_id
end