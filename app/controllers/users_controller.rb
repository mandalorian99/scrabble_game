class UsersController < ApplicationController
  before_action :check_authorization
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @leader_board = @user.leader_board || LeaderBoard.new
    @top_game = @user.game_metrics.count > 0 ? GameMetric.user_top_score(@user.id) : GameMetric.new
  end

  def edit
    @title = "Edit Your Details"
    @url = user_path(@user)
    @method = 'put'
    @sumit_title = 'Update details'
  end

  def update
    @user.assign_attributes(user_params)
    if @user.save
      redirect_to user_path(@user), notice: 'details updated successfully'
      return
    end
    Rails.logger.debug @user.errors.messages
    redirect_to user_path(@user), notice: 'unable to edit user details'
  end

  private

  def set_user
    @user = User.find(params[:id])
    raise ActiveRecord::RecordNotFound if @user.nil?
  end

  def user_params
    params.require(:user).permit(:name, :phone_number)
  end
end
