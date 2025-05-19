class PlacesController < ApplicationController

  def index
    # find all Place rows
    @places = Place.all
    # render places/index view
  end

  def new
    # render places/new view with new Place form
  end

  def create
  #   # start with a new Place
    @place = Place.new
  #   # assign user-entered form data to Place's columns
    @place["name"] = params["name"]
  #   # save Post row
    @place.save
  #  # redirect user
    redirect_to "/places"
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    @entries = Entry.where({"place_id" => @place["id"]})
  end
  
end
