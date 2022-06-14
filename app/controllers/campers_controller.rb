class CampersController < ApplicationController
    def index       
        render json: Camper.all
    end

    def show
        camper=Camper.find(params[:id])
        render json:camper, serializer: CamperShowSerializer
    end

    def create
    camper=Camper.create(camper_params)
    end

    private

    def camper_params
        params.permit(:name,:age)
    end
end
