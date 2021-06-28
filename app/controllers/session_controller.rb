class SessionController < ApplicationController
  before_action :set_user, only: [:create]
  rescue_from ActiveRecord::RecordNotFound, with: :render_404

  def new
    @user = User.new
  end

  def create
    session[:current_user_id]  = @user.id
    session[:current_user_name] = @user.name
    redirect_to user_path(@user.id), notice: "welcome #{current_user.name}"
  end

  def logout
    session[:current_user_id] = nil
    session[:current_user_name] = nil
    redirect_to new_session_path, notice: 'Logout successfully...'
  end

  private

  def set_user
    @user = User.find_by(phone_number: session_params[:phone_number])
    raise ActiveRecord::RecordNotFound if @user.nil?
  end

  def session_params
    params.require(:user).permit(:phone_number)
  end
end
