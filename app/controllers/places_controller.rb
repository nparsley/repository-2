class PlacesController < ApplicationController

  def index
    @places = Place.all
  end
   
  def index
    @places = Place.order("name").page(params[:page]).per_page(3)
  end
  # Other actions omitted.

  def new
    @place =Place.new
  end

end
