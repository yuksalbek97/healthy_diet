class UsersController < ApplicationController

  def index
    @users = User.all 
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    
end

  def update
    @user = .find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
     user = User.find(params[:id])
     User.d
  end

  private 

  def user_params
    params.require(:user).permit(:name, :age, :gender, :weight, :height, :email)
  end


end
