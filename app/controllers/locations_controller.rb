class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    
  end

  def create
  end
end
