class MembershipsController < ApplicationController
    # before_action :authenticate, only: [:index]
    before_action :set_membership, only: [:update, :destroy]
    def index
        # authenticate
        @memberships = Membership.all
        render json: @memberships
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

    # # DELETE /bird_captures/1
    # def destroy
    #   @bird_capture.destroy
    # end

    private

    def membership_params
        params.require(:membership).permit(:user_id, :research_group_id)
    end

    def set_membership
        @membership = Membership.find(params[:id])
    end
end
