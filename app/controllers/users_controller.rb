class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @leader_board = User.leader_board(@user.id)
    @top_game = GameMetric.user_top_score(@user.id)
  end

  private

  def set_user
    @user = User.find(params[:id])
    raise ActiveRecord::RecordNotFound if @user.nil?
  end
end
