class UsersController < ApplicationController
    before_action :authenticate, only: [:index]
    before_action :set_user, only: [:update, :destroy]
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
        @user = User.new(user_params)

        if @user.save
            render json: @user, status: :created, location: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    def update
        if @user.update(user_params)
            render json: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

  # # DELETE /bird_captures/1
  # def destroy
  #   @bird_capture.destroy
  # end

    private

    def user_params
        params.require(:user).permit(:name, :username, :email, :password)
    end

    def set_user
        @user = User.find(params[:id])
    end
end
