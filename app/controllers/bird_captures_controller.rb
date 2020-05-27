class BirdCapturesController < ApplicationController
    before_action :get_capture_by_id, only: [:show, :update, :destroy]
    def index
        @birdcaptures = BirdCapture.all
        #tagged_hash = {"Bird_captures" => @birdcaptures}
        render json: @birdcaptures
    end

    def show
        render json: @birdcapture
    end

    def create
        #byebug
        @birdcapture = BirdCapture.create(birdcapture_params)
        render json: @birdcapture
    end

    def update
        @birdcapture.update(birdcapture_params)
        render json: @birdcapture
    end

    # def destroy
    #     @capture.destroy
    #     redirect_to action: "index"
    # end

    private

    def birdcapture_params
        params.require(:birdCapture).permit(:bird_id, :capture_id, :membership_id).reject { |_, v| v.blank? }
    end

    def get_birdcapture_by_id
        @birdcapture = BirdCapture.find(params[:id])
    end

end
