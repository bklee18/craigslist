class SubcategoriesController < ApplicationController
  def show
    @state = State.find(params[:state_id])
    @city = City.find(params[:city_id])
    @subcategory = Subcategory.find(params[:id])
  end
end
