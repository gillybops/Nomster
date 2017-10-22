class PlacesController < ApplicationController

  def index
# Perform a paginated query; use an explicit "per page" limite:
    @places = Place.paginate(:page => params[:page], :per_page => 3)

  end

end
