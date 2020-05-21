class BuildingsController < ApplicationController

    def show
        @building = Building.find(params[:id])
    end

    def index
        @buildings = Building.all
    end
    
    def edit
        @building = Building.find(params[:id])
    end
    
    def update
        @building = Building.find(params[:id])
        @building.update(building_params)
        if @building.valid?
            redirect_to @building
        else
            render "edit"
        end
    end

    def building_params
        params.require(:building).permit(:name, :country, :address, :rent_per_floor, :number_of_floors)
    end
        

end