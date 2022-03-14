class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    set_user
    @articles = @user.articles
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to AlphaBlog #{@user.username}, you have succesfully signed up!"
      redirect_to user_path(@user)
    else
      render "new"
    end
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Your account information was successfully updated"
      redirect_to user_path(@user)
    else
      render "edit"
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
