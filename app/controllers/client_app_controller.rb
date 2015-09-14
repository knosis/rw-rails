class ClientAppController < ApplicationController
  def show
    @categories = Category.includes(:wins)
  end

  def index
  end
end
