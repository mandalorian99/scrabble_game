class GameMetric < ApplicationRecord
  # Association
  has_one :user
  belongs_to :game

  # Scope
  scope :user_top_score, ->(user_id){ where(player_id: user_id).order(points: :desc).first }

  # Enum
  enum result: {'win': 1, 'lost':2, 'stale': 0}
end