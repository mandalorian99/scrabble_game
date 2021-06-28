class LeaderBoard < ApplicationRecord
  MININUM_GAME_COUNT = 1
  # Association
  belongs_to :user

  class << self
    def top_scorers
      leader_board = LeaderBoardQuery.new
      leader_board.get_top_scorers(MININUM_GAME_COUNT)
      leader_board.execute
    end
  end
end