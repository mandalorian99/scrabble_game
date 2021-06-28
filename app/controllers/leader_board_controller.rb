class LeaderBoardController < ApplicationController
  before_action :check_authorization

  def index
    @leaderboard_data = LeaderBoard.top_scorers
  end
end
