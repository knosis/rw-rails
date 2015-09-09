class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.new(category_params)
    if category.save
      redirect_to '/'
    else
      redirect_to 'new'
    end
  end

  def show
    @category = Category.find(params[:category_id])
  end

  def edit
    @category = Category.find(params[:category_id])
  end

  def update
    @category = Category.find(params[:category_id])
  end

  def destroy
    @category = Category.find(params[:category_id])
    @category.destroy
  end


private

  def category_params
    params.require(:category).permit(:name)
  end


end
