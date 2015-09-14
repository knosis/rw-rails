class WinsController < ApplicationController
  class CategoriesController < ApplicationController

  def index
    render json: Win.all
  end

  def new
  end

  def create
    @win = Win.new(params[:win])
    @win = @category.win.new(params[:win])
    if !@win.save
      flash[:notice] = "failed to create win:\n#{@win.errors.full_messages.join("\n")}"
    end
    redirect_to root_path
  end

  def show
    @win = Win.find(params[:id])
    @win = @category.wins.find(params[:id])
  end

  def edit
    @win = Win.find(params[:id])
    @win = @category.wins.find(params[:id])
  end

  def update
    @win = Win.find(params[:id])
    @win = @category.wins.find(params[:id])
    if !@win.save
      flash[:notice] = "failed to update win\n#{@win.errors.full_messages.join("\n")}"
    end
    redirect_to root_path
  end

  def destroy
    @win = Win.find(params[:id])
    @win = @category.wins.find(params[:id])
    @win.destroy
    redirect_to root_path
  end


private

  def win_params
    params.require(:win).permit(:name)
  end


end

  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
