class AccountsController < ApplicationController
    def index
        @accounts = Account.all
    end

    def new 
        @account = Account.new
        @users = User.all
        # redirect_to new_account_path
    end

    def edit 
        @account = Account.find(params[:id])
    end

    def show 
        @account = Account.find(params[:id])
    end


    def create
        @account = Account.new(account_params)
        if @account.save
            redirect_to accounts_path
        else
            render :new
        end
    end

    def update
        @account = Account.find(params[:id])
        if @account.update(account_params)
            redirect_to accounts_path
        end
    end



    private

    def account_params
        params.require(:account).permit( :account_number, :address, :user_id)
    end

end