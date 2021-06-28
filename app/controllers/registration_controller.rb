class RegistrationController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    byebug
    if @user.valid? && @user.save!
      redirect_to new_registration_path, notice: 'User created successfully'
      return
    end
    byebug
    redirect_to new_registration_path, notice: @user.errors.messages
  end

  private

  def user_params
    params.require(:user).permit(:name, :phone_number)
  end
end
