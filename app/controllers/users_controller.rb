class UsersController < ApplicationController

  def index

    

    @users = User.all 
  end

  def new
    @user = User.new

  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)

    redirect_to new_user_path
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to user_path(@user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  # def destroy
  #    @user = User.find(params[:id])
  #    @user.destroy
  # end

  private 

  def user_params
    params.require(:user).permit(:name, :age, :gender, :weight, :height, :email, :password)
  end


end