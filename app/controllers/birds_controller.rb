class BirdsController < ApplicationController
    before_action :get_bird_by_id, only: [:show, :update, :destroy]
    def index
        @birds = Bird.all
        #tagged_hash = {"Birds" => @birds}
        render json: @birds
    end

    def show
        render json: @bird
    end

    def create
        @bird = Bird.create(bird_params)
        render json: @bird
    end

    def update
        @bird.update(bird_params)
        render json: @bird
    end

    def find_by_bandId
        #byebug
        @bird = Bird.find_by(bandId: params[:bandId])
        render json: @bird
    end

    # def find_by_bandId
    #     byebug
    #     @bird = Bird.find(params[:bandId])
    #     render json: @bird
    # end

    # def destroy
    #     @capture.destroy
    #     redirect_to action: "index"
    # end

    private

    def bird_params
        params.require(:bird).permit(:bandId, :species).reject { |_, v| v.blank? }
    end

    def get_bird_by_id
            @bird = Bird.find(params[:id])
    end

end
