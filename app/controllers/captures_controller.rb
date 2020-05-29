class CapturesController < ApplicationController
    before_action :get_capture_by_id, only: [:show, :update, :destroy]
    def index
        @captures = Capture.all
        #tagged_hash = {"Captures" => @captures}
        render json: @captures
    end

    def show
        render json: @capture
    end

    def create
        @capture = Capture.create(capture_params)
        render json: @capture
    end

    def update
        @capture.update(capture_params)
        render json: @capture
    end

    # def destroy
    #     @capture.destroy
    #     redirect_to action: "index"
    # end

    private

    def capture_params
        params.require(:capture).permit(:gender, :age, :location).reject { |_, v| v.blank? }
    end

    def get_capture_by_id
        @capture = Capture.find(params[:id])
    end

end
