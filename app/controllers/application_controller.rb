class ApplicationController < ActionController::API
    # def authenticate
    #     begin
    #         authorization_header = request.headers["Authorization"]
    #         token = authorization_header.split(" ")[1]
    #         secret = Rails.application.secrets.secret_key_base
    #         decoded_token = JWT.decode(token, secret)
    #     rescue
    #         render json: {message: "rescue catch method activated"}
    #     end
    # end
    def authenticate
        authorization_header = request.headers["Authorization"]
        if !authorization_header
            render json: {error: "No auth header present"}
        else
            token = authorization_header.split(" ")[1]
            secret = Rails.application.secrets.secret_key_base
            begin
                payload = JWT.decode(token, secret)[0]
                @user = User.find(payload["user_id"])
                @memberships = Membership.where(user: @user)
                @researchGroups = ResearchGroup.all
            rescue
                render json: {error: "Invalid token"}
            end
        end
    end
end
