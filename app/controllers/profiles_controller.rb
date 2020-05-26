class ProfilesController < ApplicationController
    def authenticate 
        
    end
    def index
        authorization_header = request.headers["Authorization"]
        if !authorization_header
            render json: {error: "No auth header present"}
        else
            token = authorization_header.split(" ")[1]
            secret = Rails.application.secrets.secret_key_base
            begin
                payload = JWT.decode(token, secret)[0]
                render json: {top_secret_stuff: "Private user page displaying, #{payload['username']}"}

            rescue
        end
    end
end
