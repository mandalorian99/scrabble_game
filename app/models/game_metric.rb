class GameMetric < ApplicationRecord
  # Association
  has_one :user
  belongs_to :game

  # Scope
  scope :user_top_score, ->(user_id){ where(user_id: user_id).order(points: :desc).first }

  # Enum
  enum result: {'win': 1, 'lost': 2, 'stale': 0}

  # Callback
  # Update leader board
  after_save do |gm|
    leader_board = LeaderBoard.find_by(user_id: gm.user_id)
    new_score = leader_board.score + gm.points
    new_game_total = leader_board.total_games + 1

    new_win_total = gm.win? ? leader_board.win + 1 : leader_board.win
    new_loss_total = gm.lost? ? leader_board.loss + 1 : leader_board.loss
    new_stale_total = gm.stale? ? leader_board.stale + 1 : leader_board.stale

    leader_board.update(
      score: new_score,
      total_games: new_game_total, 
      win: new_win_total, 
      loss: new_loss_total, 
      stale: new_stale_total
    )
  end
end