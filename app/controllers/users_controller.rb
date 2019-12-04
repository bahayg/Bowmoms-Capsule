class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        session[:user_id] = user.id
        redirect_to users_path
    end

    private

    def user_params
        params.require(:user).permit(params(:username, :email))
    end
end
