class LocationsController < ApplicationController
  def show
  end

  def index
    @locations = Location.all
  end
end
