class SessionsController < ApplicationController

  def new
    @user = User.new
    render :login
  end

  def create

    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to episodes_path
    else
      redirect_to login_path
    end
  end


end
