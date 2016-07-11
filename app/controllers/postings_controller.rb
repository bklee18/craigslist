class PostingsController < ApplicationController
  def new
    @state = State.find(params[:state_id])
    @city = City.find(params[:city_id])
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:subcategory_id])
    @posting = Posting.new
  end

  def show
    @state = State.find(params[:state_id])
    @city = City.find(params[:city_id])
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:subcategory_id])
    @posting = Posting.find(params[:id])
  end

  def create
    @state = State.find(params[:state_id])
    @city = City.find(params[:city_id])
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:subcategory_id])
    @posting = Posting.new(posting_params)
    if @posting.save
      flash[:notice] = @posting.edit_key
      redirect_to state_city_category_subcategory_posting_path(@state, @city, @category, @subcategory, @posting)
    else
      render 'new'
    end
  end

  def edit
    @state = State.find(params[:state_id])
    @city = City.find(params[:city_id])
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:subcategory_id])
    @posting = Posting.find(id_params)
    if params[:key] == @posting.edit_key
      render 'edit'
    else
      render not_found
    end
  end

  def destroy
    @state = State.find(params[:state_id])
    @city = City.find(params[:city_id])
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:subcategory_id])
    @posting = Posting.find(id_params)
    if params[:key] == @posting.edit_key
      @posting.destroy
      redirect_to '/'
    else
      render not_found
    end
  end

  def update
    @state = State.find(params[:state_id])
    @city = City.find(params[:city_id])
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:subcategory_id])
    @posting = Posting.find(id_params)
    if Posting.update(@posting.id, posting_params)
      redirect_to state_city_category_subcategory_posting_path(@state, @city, @category, @subcategory, @posting)
    else
      render not_found
    end
  end

  private

  def posting_params
    params.require(:posting).permit(:title, :description, :email)
  end

  def id_params
    params.require(:id)
  end
end
