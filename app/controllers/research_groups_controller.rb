class ResearchGroupsController < ApplicationController
    def index
        @rgs = ResearchGroup.all
# render :json => @booking, :include => [:paypal, 
#         :boat_people,
#         :boat => {:include => {:port => {:include => {:city => {:include => {:country => {:only => :name}}}}}, 
#                 :boat_model => {:only => :name, :include => {:boat_type => {:only => :name}}}}}]

        #render json: @rgs, include: [:memberships => {:include => :bird_captures}]
        #render json: @rgs, include: [:memberships => {:include => {:bird_captures => {:include => {:membership => {:include => :user}}}}}]
        render json: @rgs, include: [:memberships => {:include => [:user, :bird_captures=> {:include => {:membership => {:include => :user}}}]}]

    end

    def show
        @rg = ResearchGroup.find(params[:id])
        render json: @rg, include: [:memberships]
    end
end
