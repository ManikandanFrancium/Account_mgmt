class UsersController < ApplicationController
    def user_accounts
        a = User.find(params[:id]).users
    end
    
    def index
        @users = User.all
    end
    
    def new 
        @user = User.new
    end
    
    def edit 
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        
        if @user.save
            redirect_to users_path
        else
            render :new
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to users_path
        end
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :phone_number)
    end

end