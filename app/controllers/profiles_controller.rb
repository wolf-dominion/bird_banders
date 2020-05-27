class ProfilesController < ApplicationController
    before_action :authenticate, only: [:index]
    
    def index
        # render json: {top_secret_stuff: "Private user page displaying for #{@user.username}, your id is #{@user.id}"}
        render json: {data: @user, memberships: @memberships, researchGroups: @researchGroups}
    end
end