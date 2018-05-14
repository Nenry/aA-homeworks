class UsersController < ApplicationController

  def new
    @user = User.new

    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save!
      log_in_user!(@user)
      render :show
    else
      render :new
    end

  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def user_params
    params.require(:user).permit(:email, :password, :session_token)
  end

end
