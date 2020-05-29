class AuthenticationController < ApplicationController

    def login
        @user = User.find_by(username: params[:username])

        if @user
            if @user.authenticate(params[:password])
                payload = {user_id: @user.id, username: @user.username}
                secret = Rails.application.secrets.secret_key_base
                token = JWT.encode(payload, secret)

                render json: {token: token, username: @user.username, user_id: @user.id}
            else
                render json: "User found but password wrong" #, status: unauthorized
            end
            
        else
            render json: "User not found" #, status: unauthorized
        end
    end

end