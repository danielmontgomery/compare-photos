class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    u = User.where(email: params[:username][:email]).first
    if u != nil && u.authenticate(params[:username][:password])
      session["user_id"] = u.id.to_s
    else
      redirect_to users_path
    end
  end

  def destroy
    session.destroy
  end
end
