class CategoriesController < ApplicationController
  def show
    @state = State.find(params[:state_id])
    @category = Category.find(params[:id])
  end
end
