class SessionsController < ApplicationController
  skip_before_action :auth_user, only: [:new, :create]


    def update_view
        session[:view_count] = 0

        redirect_back fallback_location: proteins_path
    end


  def logout
    session.delete(:user_id)
  end 

  def new 
  end 

  def create 
    @user = User.find_by(name: params[:session][:name])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id

      redirect_to user_path(@user.id)
    else
      flash[:error] = "Username or Password is Incorrect"
      redirect_to new_login_path
    end  
  end 

end
