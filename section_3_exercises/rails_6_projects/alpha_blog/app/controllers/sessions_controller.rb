class SessionsController < ApplicationController
  def new
  end

  def create
    credentials = session_params
    user = User.find_by(email: credentials[:email].downcase)
    if user && user.authenticate(credentials[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome back #{user.username}!"
      redirect_to user
    else
      flash.now[:alert] = "There was something wrong with your login details"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
