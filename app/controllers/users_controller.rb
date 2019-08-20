class UsersController < ApplicationController
    before_action :find_user, only: [:show, :new, :create, :edit, :update, :delete]
    before_action :authorized, only: [:index, :show, :edit, :update, :delete]
    # page unknown use
    def index
        @users = User.all
    end
    # Your Profile
    def show
        
    end
    #register
    def new 
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to @user
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end
    #edit your profile
    def edit

    end

    def update
        @user.update(user_params)
        if @user.valid?    
            redirect_to @user
        else
            flash[:errors] = @user.errors.full_messages
        end
    end
    #button to destroy on edit profile page
    def destroy
        @user.destroy
        redirect_to login_path
    end

    private
    def find_user
        @user = User.find_by(params[:id])
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
