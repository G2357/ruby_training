class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:alert] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end

  def only_for(user, path)
    if current_user != user && !current_user.admin?
      byebug
      flash[:alert] = "You're not authorized to do that"
      redirect_to path
    end
  end
end
