class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(params.require(:user).permit(:username, :email, :avatar, :password, :password_digest))
    if user.save
      redirect_to new_session_path
    end
  end

  def edit
  end

  def destroy
  end

end
