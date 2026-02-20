class EntriesController < ApplicationController
  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
    if params[:place_id]
      @entry.place_id = params[:place_id]
      place = Place.find(params[:place_id])
      @entry.title = "Trip to #{place.name}"
    end
    @existing_entry = Entry.find_by(place_id: params[:place_id]) if params[:place_id]
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to @entry.place
    else
      render :new
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :occurred_on, :place_id)
  end
end
