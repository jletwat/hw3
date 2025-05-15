class EntriesController < ApplicationController

  def create
    #   # start with a new Place
      @place = Place.new
    #   # assign user-entered form data to Place's columns
      @place["name"] = params["name"]
    #   # save Post row
      @place.save
    #  # redirect user
      redirect_to "/entries"
    end

end
