class UsersController < ApplicationController
  before_action :check_authorization
  before_action :set_user, only: [:show]

  def show
    @leader_board = @user.leader_board || LeaderBoard.new
    @top_game = @user.game_metrics.count > 0 ? GameMetric.user_top_score(@user.id) : GameMetric.new
  end

  private

  def set_user
    @user = User.find(params[:id])
    raise ActiveRecord::RecordNotFound if @user.nil?
  end
end
