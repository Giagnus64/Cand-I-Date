class ApplicationController < ActionController::Base
  before_action :set_up_auth_variables
  before_action :authorized

  def set_up_auth_variables
    @user_id = session["user_id"]
    #makes logged_in true or false
    @logged_in = !!@user
    if @logged_in
    @current_user= User.find(@user_id)
    end
  end
  
  #can do a before_action on all routes that need it
  def authorized
    unless @logged_in
      return redirect_to("/")
    end
  end
  
  def logout
  session["user_id"] = nil
  end
end
