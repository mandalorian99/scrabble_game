class GameMetric < ApplicationRecord
  # Association
  has_one :user, foreign_key: :id
  belongs_to :game

  # Scope
  scope :user_top_score, ->(user_id){ where(player_id: user_id).order(points: :desc).first }
end