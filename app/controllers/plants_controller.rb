class PlantsController < ApplicationController

  def index 
plants = Plant.all
render json: plants
  end

  def show
plant = Plant.find(params[:id])

render json: plant
  end

def create
plant = Plant.create(permit_params)

render json: plant
end

private

def permit_params
params.permit(:name, :image, :price)
end

end
