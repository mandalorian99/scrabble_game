class RegistrationController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid? && @user.save!
      @user.create_leader_board(score: 0, total_games: 0, win: 0, loss: 0)
      redirect_to new_registration_path, notice: 'User created successfully'
      return
    end
    redirect_to new_registration_path, notice: @user.errors.messages
  end

  private

  def user_params
    params.require(:user).permit(:name, :phone_number)
  end
end
