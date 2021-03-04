class UsersController < ApplicationController
    skip_before_action :redirect_user, only:[:new, :create]

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        redirect_to diseases_path
    end

    private

    def user_params
        params.require(:user).permit(:username, :password_digest)
    end

end
