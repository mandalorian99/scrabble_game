class ApplicationController < ActionController::Base

  def render_404
    redirect_to new_registration_path, notice: 'Register before playing scrable'
  end

  def access_denied
    redirect_to new_registration_path, notice: 'unreachable resource access denied'
  end

  def check_authorization
    access_denied unless current_user.present?
  end

  def current_user
    @_current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
  end
  helper_method :current_user
end
