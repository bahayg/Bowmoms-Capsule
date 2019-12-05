class AuthController < ApplicationController
    def signin
        session[:user_id] = @user.id
    end

    def verify
        @user = User.find_by(username: params[:auth][:username])
        if @user && @user.authenticate(params[:auth][:password])
            session[:user_id] = @user.id
            redirect_to diseases_path
        else 
            flash[:message] = "Incorrect detail please try again"
            render :signin
        end
    end

    def logout
        session.clear
        redirect_to login_path
    end

    def current_user
        @user = User.find(session[:user_id])
    end
end