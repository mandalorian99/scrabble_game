class User <  ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :phone_number, presence: true, length: {is: 10}
  
  # Association
  has_many :game_metrics, foreign_key: :player_id
  has_one :leader_board
end