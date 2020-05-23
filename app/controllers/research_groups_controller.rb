class ResearchGroupsController < ApplicationController
    def index
        @rgs = ResearchGroup.all
        render json: @rgs, include: [:users]
    end

    def show
        @rg = ResearchGroup.find(params[:id])
        render json: @rg, include: [:users]
    end
end
