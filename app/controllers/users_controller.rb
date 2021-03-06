class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to signup_path
    end
  end

  def update
    @login = params[:login]
    @user = User.find_by(:login => @login)
  end

  def edit
    @login = params[:login]
    @user = User.find_by(:login => @login)
  end

  def destroy
    @login = params[:login]
    @user = User.find_by(:login => @login)
  end

  def index
  end

  def show
    @login = params[:login]
    @user = User.find_by(:login => @login)
  end

private

  def user_params
    params.require(:user).permit(:login, :password, :password_confirmation)
  end


end
