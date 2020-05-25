class UsersController < ApplicationController
    before_action :authenticate, only: [:index]
    def index
            authenticate
            @users = User.all
            render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(user_params)
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :email, :password)
    end
end
