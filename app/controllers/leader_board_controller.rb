class LeaderBoardController < ApplicationController
  def index
    @leaderboard_data = LeaderBoard.top_scorers
  end
end
