class GameMetric < ApplicationRecord
  has_one :user, foreign_key: :id
  belongs_to :game
end