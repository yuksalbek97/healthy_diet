class UsersController < ApplicationController
skip_before_action :auth_user, only: [:new, :create]
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

    if @user.valid?
      session[:user_id] = @user.id
      redirect_to edit_user_path(@user.id)
    else
      flash[:user_errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
     @user = User.find(params[:id])
     @user.destroy

     redirect_to new_user_path
  end

  private 

  def user_params
    params.require(:user).permit(:name, :age, :gender, :weight, :height, :email, :password)
  end


end