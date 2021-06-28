class User <  ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :phone_number, presence: true, length: {is: 10}
  
  # Association
  has_many :game_metrics, foreign_key: :player_id

  # Scope
  scope :leader_board, ->(user_id){ LeaderBoard.find_by(player_id: user_id) }
end