class LoginController < ApplicationController
  def new
    # gets the form
  end

  def create
    # check the information inside the form
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      #byebug
      redirect_to @user
    else
      flash[:message] = "Incorrect username or password"
      redirect_to "/welcome"
    end
  end

end