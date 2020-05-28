class MembershipsController < ApplicationController
    # before_action :authenticate, only: [:index]
    before_action :set_membership, only: [:update]
    def index
        # authenticate
        @memberships = Membership.all
        #render json: @rgs, include: [:memberships => {:include => [:user, :bird_captures=> {:include => {:membership => {:include => :user}}}]}]

        render json: @memberships, include: [:user, :bird_captures=> {:include => [:bird, :capture]}]
    end

    def show
        @membership = Membership.find(params[:id])
        
        render json: @membership
    end

    def create
        @membership = Membership.new(membership_params)

        if @membership.save
            render json: @membership, status: :created, location: @user
        else
            render json: @membership.errors, status: :unprocessable_entity
        end
    end

    def update
        @membership = Membership.find(params[:id])
        if @membership.update(membership_params)
            render json: @membership
        else
            render json: {message: "Could not update"}
        end
    end

    # def destroy
    #     #byebug
    #     @user = User.find(params[:user_id])
    #     @group = ResearchGroup.find(params[:research_group_id])

    #     @membership_id = Membership.where(user_id: @user.id, research_group_id: @group.id)

    #     @bircaptures = BirdCaptures.all
    #     @birdCaptures = @birdCaptures.where()

    #     @memberships = Membership.all
    #     @memberships = @memberships.where(user_id: @user.id, research_group_id: @group.id).delete_all
    # end

    private

    def membership_params
        params.require(:membership).permit(:user_id, :research_group_id)
    end

    def set_membership
        @membership = Membership.find(params[:id])
    end
end
