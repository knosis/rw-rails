class CategoriesController < ApplicationController

  def index
    render json: Category.all
  end

  def new
  end

  def create
    @category = Category.new(category_params)
    if !@category.save
      flash[:notice] = "failed to create category:\n#{@category.errors.full_messages.join("\n")}"
    end
    redirect_to root_path
  end

  def show
    @category = Category.find(params[:category_id])
  end

  def edit
    @category = Category.find(params[:category_id])
  end

  def update
    @category = Category.find(params[:id])
    if !@category.update(params[:category])
      flash[:notice] = "failed to updates category\n#{@category.errors.full_messages.join("\n")}"
    end
    redirect_to root_path
  end

  def destroy
    @category = Category.find(params[:category_id])
    @category.destroy
    redirect_to root_path
  end


private

  def category_params
    params.require(:category).permit(:name)
  end


end
