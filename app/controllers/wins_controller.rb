class WinsController < ApplicationController

  before_filter :authorize

  def index
    @wins = Win.all
    render json: @wins
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
    render json: @win
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
    params.require(:win).permit(:title, :content, :score, :event_date, :remind_at, :category_id)
  end

end
