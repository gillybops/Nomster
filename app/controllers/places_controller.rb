class PlacesController < ApplicationController

  def index
# Perform a paginated query; use an explicit "per page" limite:
    @places = Place.paginate(:page => params[:page], :per_page => 3)
  end

  def new
    @place = Place.new 
  end

  def create
    Place.create(place_params) 
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end


end
