class PlacesController < ApplicationController
  def index
    @places = Place.all 

  end
  
  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to new_entry_path(place_id: @place.id)
    else
      render :new
    end
  end

  private

  def place_params
    params.require(:place).permit(:name)
  end



  # def france
  # end

  # def florida
  # end

  # def colorado
  # end

  # def montana
  # end
end
