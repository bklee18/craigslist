class PostingsController < ApplicationController
  def new
    @state = State.find(params[:state_id])
    @city = City.find(params[:city_id])
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:subcategory_id])
    @posting = Posting.new
  end

  def show
    @posting = Posting.find(params[:id])
  end

  def create
    @state = State.find(params[:state_id])
    @city = City.find(params[:city_id])
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:subcategory_id])
    @posting = Posting.new(posting_params)
    if @posting.save
      redirect_to state_city_category_subcategory_posting_path(@state, @city, @category, @subcategory, @posting)
    else
      render 'new'
    end
  end

  private

  def posting_params
    params.require(:posting).permit(:title, :description, :email)
  end
end
