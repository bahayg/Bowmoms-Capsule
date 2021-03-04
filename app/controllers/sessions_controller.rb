class SessionsController < ApplicationController
skip_before_action :require_login, only: [:create, :new]

def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to login_path
    else
        flash[:message] = "Wrong info!"
        render :login
        # redirect_to '/login'
    end
  end

  def destroy    
    session.delete(:user_id)
    redirect_to login_path
  end

  def current_user
   User.find(session[:user_id])
  end
end
